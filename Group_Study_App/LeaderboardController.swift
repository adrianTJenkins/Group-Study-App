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
    
    @IBOutlet weak var quizBackBtn: UIButton!
    @IBOutlet weak var courseBackBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
    }
    
    func updateUI() {
        quizLabel.text = currentQuiz
        scoreLabel.text = "Leaderboard"
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
        return currentScores.count
    }
    
    func tableView(_ scoreTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sortedQuery = (database.child(currentQuizID).queryOrdered(byChild: "score"))
        let cell = scoreTableView.dequeueReusableCell(withIdentifier: "scoreCell", for: indexPath);
        cell.textLabel?.text = "\(user.name) - \(String(describing: currentScores[user.name])): \(sortedQuery)"
        return cell;
    }
 
}

