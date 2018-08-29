//
//  Gits.swift
//  Lession6Demo
//
//  Created by le.huu.dung on 8/29/18.
//  Copyright © 2018 le.huu.dung. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import ObjectMapper

class Gits: Mappable {
    var id: String?
    var name: String?
    var language: String?
    var created_at: String?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        language <- map["language"]
        created_at <- map["created_at"]
    }
    
}
