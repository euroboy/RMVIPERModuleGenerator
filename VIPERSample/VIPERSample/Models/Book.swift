//
//  Book.swift
//  VIPERSample
//
//  Created by User on 9/3/19.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation

struct Book: Decodable
{
    var name: String
    var author: String
    var cover: String
    var year: Int
}
