//
//  MainTVC.swift
//  MVC - App
//
//  Created by Haydar Bekmuradov on 25.08.22.
//

import UIKit

class MainTVC: UITableViewController {
    
    let cellManager = CellManager()

    var fighters: [Fight] {
        FightersData.shared.meals
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        fighters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        
        let fighter = fighters[indexPath.row]
        
        cellManager.configure(cell, with: fighter)
//        cell.textLabel?.text = fighter.name
//        cell.detailTextLabel?.text = String("Record:\(fighter.wins) \n")
//        cell.imageView?.image = fighter.image
        

        return cell
    }
    


    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showFightDetail",
              let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let fightDetailVC = segue.destination as! FightDetailVC
        fightDetailVC.index = indexPath.row
        
        
    }
    
    @IBAction func unwindToMainTVC(_ unwindSegue: UIStoryboardSegue) {
        tableView.reloadData()
    }

}
