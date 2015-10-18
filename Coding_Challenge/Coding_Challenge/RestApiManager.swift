//
//  RestApiManager.swift
//  Coding_Challenge
//
//  Using SwiftyJSON for JSON parsing. 
//  SwiftyJSON Docs: https://github.com/SwiftyJSON/SwiftyJSON
//  Using Alamofire for networking.
//  Alamofire Docs: https://github.com/Alamofire/Alamofire
//
//  Created by Hesham Salman on 10/15/15.
//  Copyright © 2015 Hesham Salman. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

typealias ServiceResponse = (ApiResponse, ErrorType?) -> Void

class RestApiManager : NSObject {
    static let sharedInstance = RestApiManager()

    private let API_KEY = "2fd4ce663be8a596d54efb0dbe5c1c588607ad54"
    private var BASE_URL: String {
        get {
            return "https://8tracks.com/mix_sets/staff-picks.json?api_version=3&api_key=\(API_KEY)&include=mixes[user]+pagination"
        }
    }

    func getMixSet(onCompletion: ServiceResponse) {
        Alamofire.request(.GET, BASE_URL, parameters: nil)
            .responseObject { (response: ApiResponse?, error: ErrorType?) in
                if let err = error {
                    print(err)
                } else {
                    onCompletion(response!, error)
                }
        }
    }
}
