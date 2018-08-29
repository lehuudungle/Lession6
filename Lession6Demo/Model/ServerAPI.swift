//
//  ServerAPI.swift
//  Lession6Demo
//
//  Created by le.huu.dung on 8/29/18.
//  Copyright © 2018 le.huu.dung. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
let url = "https://api.github.com/users/google/repos"
class ServerAPI {
    static let shared = ServerAPI()
    
    func getData(completion: @escaping (_ gits: [Gits]) -> Void) {
        Alamofire.request(url).responseArray { (response: DataResponse<[Gits]>) in
            var gits = response.result.value
            completion(gits!)
            
        }
    }
}
