//
//  UsersShowsViewController.swift
//  Retro Tracker
//
//  Created by Jesse Ruiz on 9/27/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class UsersShowsViewController: UIViewController {
    
    // MARK: - Properties
    var showController = ShowController()
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        showController.addShow()
    }
}

extension UsersShowsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return showController.usersShows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "usersShows", for: indexPath) as? UsersShowsTableViewCell else { return UITableViewCell() }
        
        let show = showController.usersShows[indexPath.row]
        cell.show = show
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "ShowDetail" {
    //            if let indexPath = tableView.indexPathForSelectedRow,
    //                let showDetail = segue.destination as? DetailShowViewController {
    //                //showDetail.show = showController.usersShows[indexPath.row]
    //            }
    //        }
    //    }
    
    
}
