//
//  Category.swift
//  bother
//
//  Created by Matt on 08/11/2018.
//  Copyright © 2018 mindelicious. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
