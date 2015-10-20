//
//  MixViewController.swift
//  Coding_Challenge
//
//  Created by Hesham Salman on 10/16/15.
//  Copyright © 2015 Hesham Salman. All rights reserved.
//

import UIKit

class MixViewController: UIViewController {

    @IBOutlet weak var mixCoverImageView: UIImageView!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tagsLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var datePublishedLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    var mix: Mix?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false

        
        // Set ImageViews
        if let mixCoverUrl = mix?.coverUrls?.croppedImgixUrl {
            setImageView(mixCoverImageView, url: mixCoverUrl)
        }
        if let avatarCoverUrl = mix?.user?.avatarUrls?.croppedImgixUrl {
            setImageView(avatarImage, url: avatarCoverUrl)
        }
        
        // Set Title
        if let name = mix?.name {
            titleLabel.text = name
        }
        
        // Set Tags
        if let tags = mix?.tagListCache {
            tagsLabel.text = tags
        }
        
        // Set Artists
        if let artists = mix?.artistList {
            let artistCount = artists.count
            var artistString: String = ""
            if artistCount <= 3 {
                for var i = 0; i < artistCount - 1; i++ {
                    artistString += "\(artists[i]), "
                }
                artistString += "and \(artists.last)"
            } else {
                artistString = "\(artists[0]), \(artists[1]), \(artists[2]) and \(artistCount - 3) more"
            }
            artistLabel.text = artistString
        }
        
        // Set user name
        if let user = mix?.user?.login {
            userLabel.text = user
        }
        
        // Set Publish Date
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        if let date = mix?.firstPublishedAt {
            let trimmedDate = date.componentsSeparatedByString("T")[0]
            let dateComponents = NSDateComponents()
            let currentComponents = trimmedDate.componentsSeparatedByString("-")
            dateComponents.year = Int(currentComponents[0])!
            dateComponents.month = Int(currentComponents[1])!
            dateComponents.day = Int(currentComponents[2])!
            let formattedDate = NSCalendar.currentCalendar().dateFromComponents(dateComponents)
            datePublishedLabel.text = formatter.stringFromDate(formattedDate!)
        }
        
        // Set Description
        if let d = mix?.description {
            descriptionLabel.text = d
        }
        
        // Set InfoLabel
        // Get values of likes & plays if available; otherwise set to 0
        let likesCount = mix?.likesCount ?? 0
        let playsCount = mix?.playsCount ?? 0
        // Build the attributed string
        let attributes = [NSFontAttributeName: UIFont.fontAwesomeOfSize(14)] as Dictionary!
        let infoString = NSMutableAttributedString(string: "\(String.fontAwesomeIconWithName(.Heart)) \(likesCount)    ", attributes: attributes)
        infoString.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSRange(location: 0, length: 1))
        let playsInfo = NSAttributedString(string: "\(String.fontAwesomeIconWithName(.Play)) \(playsCount)", attributes: attributes)
        infoString.appendAttributedString(playsInfo)
        //Assign to label
        infoLabel.attributedText = infoString
    }
    
    private func setImageView(imageView: UIImageView, url: String) -> Void {
        imageView.contentMode = .ScaleAspectFill
        imageView.clipsToBounds = true
        ImageLoader.sharedLoader.imageForUrl(url, completionHandler: { (image: UIImage?, url: String) in
            imageView.image = image
        })
    }
}
