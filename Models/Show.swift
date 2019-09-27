//
//  Show.swift
//  Retro Tracker
//
//  Created by Jesse Ruiz on 9/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Show: Codable {
    var showTitle: String
    var showImage1: String
    var showImage2: String
    var showBio: String
    var seasons: Int
    var episodes: Int
    var finished: Bool
    var hasStarted: Bool
    var comingUp: Bool
    var showAdded: Bool
}
