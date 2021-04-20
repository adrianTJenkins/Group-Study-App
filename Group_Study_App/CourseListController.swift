//
//  CourseListController.swift
//  Group_Study_App
//
//  Created by Adrian Jenkins on 4/14/21.
//

import UIKit

class CourseListController: UIViewController {

    @IBOutlet weak var userLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        userLabel.text = user.name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
