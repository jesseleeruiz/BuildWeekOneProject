//
//  UsersShowsTableViewCell.swift
//  Retro Tracker
//
//  Created by Jesse Ruiz on 9/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class UsersShowsTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    var showController = ShowController()
    
    // MARK: - Outlets
    @IBOutlet weak var userShowImage: UIImageView!
    @IBOutlet weak var showTitle: UILabel!
    @IBOutlet weak var seasonNumber: UILabel!
    @IBOutlet weak var episodeNumber: UILabel!
    
    // MARK: - Methods
    var show: Show? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let show = show else { return }
        userShowImage.image = UIImage(named: show.showImage2)
        showTitle.text = show.showTitle
        seasonNumber.text = String("1")
        episodeNumber.text = String("1")
    }

}
