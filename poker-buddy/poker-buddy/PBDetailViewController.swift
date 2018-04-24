//
//  PBDetailViewController.swift
//  poker-buddy
//
//  Created by Zachary Dobbs on 4/23/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//

import UIKit

class PBDetailViewController: UIViewController {
    
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailDescription: UITextView!
    
    var option: Option?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if (option != nil) {
            detailTitle.text = option?.title
            detailDescription.text = option?.description
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
