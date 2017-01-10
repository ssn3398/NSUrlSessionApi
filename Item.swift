//
//  Item.swift
//  NSUrlSessionApi
//
//  Created by Shelly Scott-Nash on 1/9/17.
//  Copyright © 2017 Shelly Scott-Nash. All rights reserved.
//

import Foundation

class Item {
    var id: Int?
    var body: String?
    var title: String?
    
    init(json: [String: Any]) {
        self.id = json["id"] as! Int?
        self.body = json["body"] as! String?
        self.title = json["title"] as! String?

    }
}
