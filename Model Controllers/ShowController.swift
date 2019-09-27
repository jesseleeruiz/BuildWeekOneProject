//
//  ShowController.swift
//  Retro Tracker
//
//  Created by Jesse Ruiz on 9/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ShowController {
    
    var usersShows: [Show] = []
    var shows: [Show] = [Show(showTitle: "Stranger Things",
                           showImage1: "strangerThingsPhoto",
                           showImage2: "strangerThingsPhoto2",
                           showBio: "When a young boy disappears, his mother, a police chief, and his friends must confront terrifying supernatural forces in order to get him back.",
                           seasons: 3,
                           episodes: 25,
                           finished: false,
                           hasStarted: false,
                           comingUp: false,
                           showAdded: false),
                      Show(showTitle: "A Million Little Things",
                           showImage1: "aMillionLittleThingsPhoto",
                           showImage2: "aMillionLittleThingsPhoto2",
                           showBio: "A group of friends become motivated to living fuller lives after the unexpected death of a close friend.",
                           seasons: 1,
                           episodes: 17,
                           finished: false,
                           hasStarted: false,
                           comingUp: true,
                           showAdded: false),
                      Show(showTitle: "Silicon Valley",
                           showImage1: "siliconValleyPhoto",
                           showImage2: "siliconValleyPhoto2",
                           showBio: "Follows the struggle of Richard Hendricks, a Silicon Valley engineer trying to build his own company called Pied Piper.",
                           seasons: 5,
                           episodes: 46,
                           finished: false,
                           hasStarted: false,
                           comingUp: true,
                           showAdded: false),
                      Show(showTitle: "Peaky Blinders",
                           showImage1: "peakyBlindersPhoto",
                           showImage2: "peakyBlindersPhoto2",
                           showBio: "A gangster family epic set in 1919 Birmingham, England; centered on a gang who sew razor blades in the peaks of their caps, and their fierce boss Tommy Shelby.",
                           seasons: 5,
                           episodes: 30,
                           finished: false,
                           hasStarted: true,
                           comingUp: false,
                           showAdded: false),
                      Show(showTitle: "Friends",
                           showImage1: "friendsPhoto",
                           showImage2: "friendsPhoto2",
                           showBio: "Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.",
                           seasons: 10,
                           episodes: 236,
                           finished: true,
                           hasStarted: false,
                           comingUp: false,
                           showAdded: true),]
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM dd yyy"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }
        
        let date = Date(timeIntervalSinceNow: 0)
        //dateFormatter.locale = Locale(identifier: "en_US")
    
    
    func addShow() {
        for show in shows {
            if show.showAdded == true {
                usersShows.append(show)
            }
        }
    }
    
    func removeShow(index: Int) {
        usersShows.remove(at: index)
    }
    
    }





















