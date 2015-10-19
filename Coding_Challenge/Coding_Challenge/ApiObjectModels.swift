//
//  Response.swift
//  Coding_Challenge
//
//  Using the ObjectMapper library to map the objects. 
//  ObjectMapper Docs: https://github.com/Hearst-DD/ObjectMapper
//  AlamofireObjectMapper: https://github.com/tristanhimmelman/AlamofireObjectMapper
//
//  Created by Hesham Salman on 10/15/15.
//  Copyright © 2015 Hesham Salman. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import ObjectMapper

class ApiResponse: Mappable {
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
        mixSet      <-  map["mix_set"]
        status      <-  map["status"]
        errors      <-  map["errors"]
        notices     <-  map["notice"]
        logged_in   <-  map["logged_in"]
        apiVersion  <-  map["api_version"]
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
        mixes               <-  map["mixes"]
        pagination          <-  map["pagination"]
        smartId             <-  map["smart_id"]
        smartType           <-  map["smart_type"]
        path                <-  map["path"]
        name                <-  map["name"]
        webPath             <-  map["web_path"]
        sort                <-  map["sort"]
        playbackStaysInSet  <-  map["playback_stays_in_set"]
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
        currentPage     <-  map["current_page"]
        perPage         <-  map["per_page"]
        offsetBy        <-  map["offset_by"]
        nextPage        <-  map["next_page"]
        previousPage    <-  map["previous_page"]
        totalEntries    <-  map["total_entries"]
        totalPages      <-  map["total_pages"]
        nextPagePath    <-  map["next_page_path"]
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
    var firstPublishedAt: String?
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
        user                        <-  map["user"]
        id                          <-  map["id"]
        path                        <-  map["path"]
        webPath                     <-  map["web_path"]
        name                        <-  map["name"]
        userId                      <-  map["user_id"]
        published                   <-  map["published"]
        unlisted                    <-  map["unlisted"]
        readOnly                    <-  map["read_only"]
        coverUrls                   <-  map["cover_urls"]
        description                 <-  map["description"]
        playsCount                  <-  map["plays_count"]
        tagListCache                <-  map["tag_list_cache"]
        firstPublishedAt            <-  map["first_published_at"]
        firstPublishedAtTimestamp   <-  map["first_published_at_timestamp"]
        likesCount                  <-  map["likes_count"]
        certification               <-  map["certification"]
        isPromoted                  <-  map["is_promoted"]
        duration                    <-  map["duration"]
        tracksCount                 <-  map["tracks_count"]
        colorPalette                <-  map["color_palette"]
        artistList                  <-  map["artist_list"]
    }
}

class CoverUrls: Mappable {
    var original: String?
    var originalImgixUrl: String?
    var staticCroppedImgixUrl: String?
    var croppedImgixUrl: String?
    var croppedImgixSize: Int?
    var sq56: String?
    var sq72: String?
    var sq100: String?
    var sq133: String?
    var max133w: String?
    var max200: String?
    var sq250: String?
    var sq500: String?
    var max1024: String?
    var animated: Bool?
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        original                <-  map["original"]
        originalImgixUrl        <-  map["original_imgix_url"]
        staticCroppedImgixUrl   <-  map["static_cropped_imgix_url"]
        croppedImgixUrl         <-  map["cropped_imgix_url"]
        croppedImgixSize        <-  map["cropped_imgix_size"]
        sq56                    <-  map["sq56"]
        sq72                    <-  map["sq72"]
        sq100                   <-  map["sq100"]
        sq133                   <-  map["sq133"]
        max133w                 <-  map["max133w"]
        max200                  <-  map["max200"]
        sq250                   <-  map["sq250"]
        sq500                   <-  map["sq500"]
        max1024                 <-  map["max1024"]
        animated                <-  map["animated"]
    }
}

class User: Mappable {
    var id: Int?
    var login: String?
    var path: String?
    var webPath: String?
    var avatarUrls: AvatarUrls?
    var colorPalette: [String]?
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        id              <-  map["id"]
        login           <-  map["login"]
        path            <-  map["path"]
        webPath         <-  map["web_path"]
        avatarUrls      <-  map["avatar_urls"]
        colorPalette    <-  map["color_palette"]
    }
}

class AvatarUrls: Mappable {
    var original: String?
    var originalImgixUrl: String?
    var staticCroppedImgixUrl: String?
    var croppedImgixUrl: String?
    var croppedImgixSize: Int?
    var sq56: String?
    var sq72: String?
    var sq100: String?
    var sq200: String?
    var sq400: String?
    var sq640: String?
    var sq750: String?
    var max200: String?
    var max250w: String?
    var discourse: String?
    var animated: String?
    
    required init?(_ map: Map) {
        mapping(map)
    }
    
    func mapping(map: Map) {
        original                <-  map["original"]
        originalImgixUrl        <-  map["original_imgix_url"]
        staticCroppedImgixUrl   <-  map["static_cropped_imgix_url"]
        croppedImgixUrl         <-  map["cropped_imgix_url"]
        croppedImgixSize        <-  map["cropped_imgix_size"]
        sq56                    <-  map["sq56"]
        sq72                    <-  map["sq72"]
        sq100                   <-  map["sq100"]
        sq200                   <-  map["sq200"]
        sq400                   <-  map["sq400"]
        sq640                   <-  map["sq640"]
        sq750                   <-  map["sq750"]
        max200                  <-  map["max200"]
        max250w                 <-  map["max250w"]
        discourse               <-  map["discourse"]
        animated                <-  map["animated"]
    }
}
