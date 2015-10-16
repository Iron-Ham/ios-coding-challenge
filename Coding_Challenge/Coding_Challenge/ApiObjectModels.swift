//
//  Response.swift
//  Coding_Challenge
//
//  Created by Hesham Salman on 10/15/15.
//  Copyright © 2015 Hesham Salman. All rights reserved.
//

import Foundation
import ObjectMapper

class Response: Mappable {
    var mixSet: MixSet?
    var status: String?
    var errors: NSObject?
    var notices: NSObject?
    var logged_in: Bool?
    var apiVersion: Int?
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        mixSet <- map["mix_set"]
        status <- map["status"]
        errors <- map["errors"]
        notices <- map["notice"]
        logged_in <- map["logged_in"]
        apiVersion <- map["api_version"]
    }
}

class MixSet: Mappable {
    var mixes: [Mix]?
    var pagination: Pagination?
    var smartId: String?
    var smartType: String?
    var path: String?
    var name: String?
    var webPath: String?
    var sort: NSObject?
    var playbackStaysInSet: Bool?
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        mixes <- map["mixes"]
        pagination <- map["pagination"]
        smartId <- map["smart_id"]
        smartType <- map["smart_type"]
        path <- map["path"]
        name <- map["name"]
        webPath <- map["web_path"]
        sort <- map["sort"]
        playbackStaysInSet <- map["playback_stays_in_set"]
    }
}

class Pagination: Mappable {
    var currentPage: Int?
    var perPage: Int?
    var offsetBy: Int?
    var nextPage: Int?
    var previousPage: NSObject?
    var totalEntries: Int?
    var totalPages: Int?
    var nextPagePath: String?
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        currentPage <- map["current_page"]
        perPage <- map["per_page"]
        offsetBy <- map["offset_by"]
        nextPage <- map["next_page"]
        previousPage <- map["previous_page"]
        totalEntries <- map["total_entries"]
        totalPages <- map["total_pages"]
        nextPagePath <- map["next_page_path"]
    }
}

class Mix: Mappable {
    var user: User?
    var id: Int?
    var path: String?
    var webPath: String?
    var name: String?
    var userId: Int?
    var published: Bool?
    var unlisted: Bool?
    var readOnly: Bool?
    var coverUrls: CoverUrls?
    var description: String?
    var playsCount: Int?
    var tagListCache: String?
    var firstPublishedAt: NSDate?
    var firstPublishedAtTimestamp: Int?
    var likesCount: Int?
    var certification: String?
    var isPromoted: Bool?
    var duration: Int?
    var tracksCount: Int?
    var colorPalette: [String]?
    var artistList: [String]?
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        user <- map["user"]
        id <- map["id"]
        path <- map["path"]
        webPath <- map["web_path"]
        name <- map["name"]
        userId <- map["user_id"]
        published <- map["published"]
        unlisted <- map["unlisted"]
        readOnly <- map["read_only"]
        coverUrls <- map["cover_urls"]
        description <- map["description"]
        playsCount <- map["plays_count"]
        tagListCache <- map["tag_list_cache"]
        firstPublishedAt <- (map["first_published_at"], DateTransform())
        firstPublishedAtTimestamp <- map["first_published_at_timestamp"]
        likesCount <- map["likes_count"]
        certification <- map["certification"]
        isPromoted <- map["is_promoted"]
        duration <- map["duration"]
        tracksCount <- map["tracks_count"]
        colorPalette <- map["color_palette"]
        artistList <- map["artist_list"]
    }
}

class CoverUrls: Mappable {
    <#properties and methods#>
}

class User: Mappable {
    <#properties and methods#>
}

class AvatarUrls: Mappable {
    <#properties and methods#>
}
