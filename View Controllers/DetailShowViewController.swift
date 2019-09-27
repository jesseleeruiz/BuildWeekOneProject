//
//  DetailShowViewController.swift
//  Retro Tracker
//
//  Created by Jesse Ruiz on 9/27/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DetailShowViewController: UIViewController {
    
    // MARK: - Properties
    var showController = ShowController()
    
//    var show: Show? {
//        didSet {
//            updateViews()
//        }
//    }

    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var showBio: UILabel!
    @IBOutlet weak var showRunTime: UILabel!
    
    var showArray1 = ["episode 1", "episode 2", "episode 3", "episode 4", "episode 5", "episode 6"]
    var showArray2 = ["episode 1", "episode 2", "episode 3", "episode 4", "episode 5", "episode 6", "episode 7", "episode 8"]
    var showArray3 = ["episode 1", "episode 2", "episode 3", "episode 4", "episode 5", "episode 6", "episode 7", "episode 8", "episode 9", "episode 10", "episode 11", "episode 12", "episode 13"]
    var showArray4 = ["episode 1", "episode 2", "episode 3", "episode 4", "episode 5", "episode 6", "episode 7", "episode 8", "episode 9", "episode 10", "episode 11", "episode 12", "episode 13"]
    var showArray5 = ["episode 1", "episode 2", "episode 3", "episode 4", "episode 5", "episode 6", "episode 7", "episode 8", "episode 9", "episode 10", "episode 11", "episode 12", "episode 13"]
    
    let twoDimensionalArray = [
    ["episode 1", "episode 2", "episode 3", "episode 4", "episode 5", "episode 6"],
    ["episode 1", "episode 2", "episode 3", "episode 4", "episode 5", "episode 6", "episode 7", "episode 8"],
    ["episode 1", "episode 2", "episode 3", "episode 4", "episode 5", "episode 6", "episode 7", "episode 8", "episode 9", "episode 10", "episode 11", "episode 12", "episode 13"],
    ["episode 1", "episode 2", "episode 3", "episode 4", "episode 5", "episode 6", "episode 7", "episode 8", "episode 9", "episode 10", "episode 11", "episode 12", "episode 13"],
    ["episode 1", "episode 2", "episode 3", "episode 4", "episode 5", "episode 6", "episode 7", "episode 8", "episode 9", "episode 10", "episode 11", "episode 12", "episode 13"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - Methods
    
//    private func updateViews() {
//        showRunTime.text = String("50 Min")
//    }
    

}

extension DetailShowViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twoDimensionalArray[section].count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Season"
        label.backgroundColor = UIColor.lightGray
        return label
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath) as? DetailShowTableViewCell else { return UITableViewCell() }
        
        let episode = twoDimensionalArray[indexPath.section
            ][indexPath.row]
        cell.textLabel?.text = episode
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}









