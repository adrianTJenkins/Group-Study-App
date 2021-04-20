//
//  LeaderboardController.swift
//  Group_Study_App
//
//  Created by Adrian Jenkins on 4/14/21.
//

import UIKit

class LeaderboardController: UIViewController {

    @IBOutlet weak var scoreTableView: UITableView!
    @IBOutlet weak var quizLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!

    
    
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

extension LeaderboardController:UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in courseTableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ scoreTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userClasses.count
    }
    
    func tableView(_ scoreTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = scoreTableView.dequeueReusableCell(withIdentifier: "scoreCell", for: indexPath);
        cell.textLabel?.text = quizzes[indexPath.row].name
        return cell;
    }
}
