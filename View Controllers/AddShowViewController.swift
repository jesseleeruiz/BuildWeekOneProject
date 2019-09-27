//
//  AddShowViewController.swift
//  Retro Tracker
//
//  Created by Jesse Ruiz on 9/27/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddShowViewController: UIViewController {
    
    // MARK: - Properties
    var showController = ShowController()

    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func doneButtonTapped(_ sender: UIBarButtonItem) {
        showController.addShow()
    }
}

extension AddShowViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return showController.shows.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AddCell", for: indexPath) as? AddShowCollectionViewCell else { return UICollectionViewCell() }
        
        let show = showController.shows[indexPath.item]
        cell.show = show
        return cell
    }
    
    
}
