//
//  QuizController.swift
//  Group_Study_App
//
//  Created by Adrian Jenkins on 4/14/21.
//

import UIKit

class QuizController: UIViewController {
    
    @IBOutlet weak var quizLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionProgress: UILabel!
    @IBOutlet weak var quizProgress: UIProgressView!
    
    @IBOutlet weak var singleBtnOne: UIButton!
    @IBOutlet weak var singleBtnTwo: UIButton!
    @IBOutlet weak var singleBtnThree: UIButton!
    @IBOutlet weak var singleBtnFour: UIButton!
    
    
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
