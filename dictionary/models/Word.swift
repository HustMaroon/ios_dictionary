//
//  word.swift
//  dictionary
//
//  Created by Do Xuan Thanh on 10/16/19.
//  Copyright © 2019 monstar-lab. All rights reserved.
//

import Foundation
class Word: NSObject, Codable {
    @objc dynamic var key: String
    @objc dynamic var meaning: String
    
    init(key: String, meaning: String) {
        self.key = key
        self.meaning = meaning
    }
}
