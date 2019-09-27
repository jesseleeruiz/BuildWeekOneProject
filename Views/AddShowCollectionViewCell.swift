//
//  AddShowCollectionViewCell.swift
//  Retro Tracker
//
//  Created by Jesse Ruiz on 9/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddShowDelegate {
    func showWasAdded(_ show: Show)
}

class AddShowCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    var show: Show? {
        didSet {
            updateViews()
        }
    }
    
    var showController = ShowController()
    var isChecked = true
    var delegate: AddShowDelegate?
    
    // MARK: - Outlets
    @IBOutlet weak var featuredImage: UIImageView!
    @IBOutlet weak var imageViewContainer: UIView!
    
    
    // MARK: - Actions
    @IBAction func addMinusButtonTapped(_ sender: UIButton) {
        isChecked = !isChecked
        if isChecked {
            sender.setTitle("-", for: .normal)
            show?.showAdded = true
            showController.addShow()
        } else {
            sender.setTitle("+", for: .normal)
            show?.showAdded = false
            showController.addShow()
        }
        delegate?.showWasAdded(show!)
    }
    

    
    // MARK: - Methods
    private func updateViews() {
        guard let show = show else { return }
        featuredImage.image = UIImage(named: show.showImage1)
        
        // Get nice round corner on images
        featuredImage.layer.cornerRadius = 10.0
        featuredImage.layer.masksToBounds = true
        imageViewContainer.layer.cornerRadius = 10.0
        imageViewContainer.layer.masksToBounds = true
    }
}










