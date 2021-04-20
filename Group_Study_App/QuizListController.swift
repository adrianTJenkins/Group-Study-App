//
//  QuizListController.swift
//  Group_Study_App
//
//  Created by Adrian Jenkins on 4/14/21.
//

import UIKit

class QuizListController: UIViewController {

    @IBOutlet weak var quizTableView: UITableView!
    @IBOutlet weak var courseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

extension QuizListController:UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in courseTableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ quizTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userClasses.count
    }
    
    func tableView(_ quizTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = quizTableView.dequeueReusableCell(withIdentifier: "quizCell", for: indexPath);
        cell.textLabel?.text = quizzes[indexPath.row].name
        return cell;
    }
}
