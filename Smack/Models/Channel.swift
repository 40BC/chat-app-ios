//
//  Channel.swift
//  Smack
//
//  Created by Brandon Criss on 5/9/19.
//  Copyright © 2019 Brandon Criss. All rights reserved.
//

import Foundation

struct Channel: Decodable {
    // Decodable has to match return json object ie: same naming model and include everything that would come through
    public private(set) var id: String!
    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
//    public private(set) var __v: Int!
}
