//
//  ReviewTVC.swift
//  MVC - App
//
//  Created by Haydar Bekmuradov on 25.08.22.
//

import UIKit

class ReviewTVC: UITableViewController {
    
    var index: Int!

    var fighter: Fight {
        FightersData.shared.meals[index]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ReviewsTableViewCell", bundle: nil), forCellReuseIdentifier: "ReviewsTableViewCell")
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        fighter.feedBacks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewsTableViewCell", for: indexPath) as! ReviewsTableViewCell

        let feedback = fighter.feedBacks[indexPath.row]
        cell.nameLabel.text = feedback.dateString
        cell.textLbl.text = feedback.text
        cell.raitingLabel.text = fighter.raitingBar
        return cell
    }
}
