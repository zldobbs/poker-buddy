//
//  PokerInfoViewController.swift
//  poker-buddy
//
//  Created by Zachary Dobbs on 4/15/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//

import UIKit

class PokerInfoViewController: UIViewController {

    var option: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (option != nil) {
            self.title = option
        }
        else {
            self.title = "Poker Info"
        }
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
