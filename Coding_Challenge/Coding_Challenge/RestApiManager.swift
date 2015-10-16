//
//  RestApiManager.swift
//  Coding_Challenge
//
//  Created by Hesham Salman on 10/15/15.
//  Copyright © 2015 Hesham Salman. All rights reserved.
//

import Foundation
import SwiftyJSON

typealias ServiceResponse = (JSON, NSError?) -> Void

class RestApiManager : NSObject {
    private let API_KEY = "2fd4ce663be8a596d54efb0dbe5c1c588607ad54"
    
    private var BASE_URL: String {
        get {
            return "https://8tracks.com/mix_sets/staff-picks.json?api_version=3&api_key=\(API_KEY)&include=mixes[user]+pagination"
        }
    }
    
    
    
    
}