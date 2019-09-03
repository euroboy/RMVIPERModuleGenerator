//
//  Genre.swift
//  VIPERSample
//
//  Created by User on 9/3/19.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation

struct Genre: Decodable
{
    var name: String
    var detail: String
    var books: [Book]
}
