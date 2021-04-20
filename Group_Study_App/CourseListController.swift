//
//  CourseListController.swift
//  Group_Study_App
//
//  Created by Adrian Jenkins on 4/14/21.
//

import UIKit

class CourseListController: UIViewController {

    
    @IBOutlet weak var courseTableView: UITableView!
    @IBOutlet weak var userLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        courseTableView.reloadData()
    }
    
    func updateUI() {
        userLabel.text = user.name
    }
    
    @IBAction func unwindToCourseView(segue: UIStoryboardSegue) {
        
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

extension CourseListController:UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in courseTableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ courseTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userClasses.count
    }
    
    func tableView(_ courseTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = courseTableView.dequeueReusableCell(withIdentifier: "courseCell", for: indexPath);
        cell.textLabel?.text = userClasses[indexPath.row].name
        return cell;
    }
}
