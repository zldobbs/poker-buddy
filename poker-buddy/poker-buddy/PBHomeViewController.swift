//
//  PBHomeViewController.swift
//  poker-buddy
//
//  Created by Zachary Dobbs on 4/23/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//

import UIKit

class PBHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var homeTableView: UITableView!
    
    // options from home screen
    let options = ["Hand Rankings", "How to Play", "Strategies"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath)
        cell.textLabel?.text = options[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // segue based on chosen row
        if (indexPath.row == 0) {
            // handle hand rank transition
            if let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "handRankings") {
                print("going to hand rankings")
                self.navigationController?.pushViewController(nextViewController, animated: true)
            }
            else {
                print("failed to set next view controller to hand rankings")
            }
        }
        else {
            if let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "detailTable") as? PBTableViewController {
                // handle table transition, will need to prepare data
                nextViewController.option = options[indexPath.row]
                self.navigationController?.pushViewController(nextViewController, animated: true)
            }
            else {
                print("failed to go to a table")
            }

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Home"
        homeTableView.delegate = self
        homeTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
