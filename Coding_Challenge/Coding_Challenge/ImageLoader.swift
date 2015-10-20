//
//  ImageLoader.swift
//  Coding_Challenge
//
//  Created by Hesham Salman on 10/18/15.
//  Copyright © 2015 Hesham Salman. All rights reserved.
//

import UIKit

class ImageLoader {
    
    var cache = NSCache()
    
    class var sharedLoader : ImageLoader {
        struct Static {
            static let instance : ImageLoader = ImageLoader()
        }
        return Static.instance
    }
    
    func imageForUrl(urlString: String, completionHandler:(image: UIImage?, url: String) -> ()) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), {()in
            let data: NSData? = self.cache.objectForKey(urlString) as? NSData
            
            // Return cached image, if image is cached
            if let cachedData = data {
                let image = UIImage(data: cachedData)
                dispatch_async(dispatch_get_main_queue(), {() in
                    completionHandler(image: image, url: urlString)
                })
                return
            }
            
            // Start download if image is not cached
            let downloadTask: NSURLSessionDataTask = NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: urlString)!, completionHandler: {(data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
                // Return nothing in case of error
                if error != nil {
                    completionHandler(image: nil, url: urlString)
                    return
                }
                
                // Cache and return new image
                if data != nil {
                    let image = UIImage(data: data!)
                    self.cache.setObject(data!, forKey: urlString)
                    dispatch_async(dispatch_get_main_queue(), {() in
                        completionHandler(image: image, url: urlString)
                    })
                    return
                }
                
            })
            downloadTask.resume()
        })
        
    }
}
