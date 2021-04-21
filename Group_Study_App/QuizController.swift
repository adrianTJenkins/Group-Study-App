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
    
    var quizQuestions: [Question] = []
    var questionIndex = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        quizQuestions = populateQuestions()
        updateUI()
    }
    
    func populateQuestions() -> [Question] {
        var qList: [Question] = []
        for q in questions {
            if q.quiz == currentQuizID {
                qList.append(q)
            }
        }
        return qList
    }
    
    func nextQuestion() {
        questionIndex += 1
            if questionIndex < quizQuestions.count {
                updateUI()
            } else {
                currentQuizScores[user.name] = score
                
                performSegue(withIdentifier: "goToLeaderboard", sender: nil)
            }
    }

    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let currentAnswers = quizQuestions[questionIndex].answers
            switch sender {
            case singleBtnOne:
                if currentAnswers[0] == quizQuestions[questionIndex].correctAnswer {
                    score += 10
                }
            case singleBtnTwo:
                if currentAnswers[1] == quizQuestions[questionIndex].correctAnswer {
                    score += 10
                }
            case singleBtnThree:
                if currentAnswers[2] == quizQuestions[questionIndex].correctAnswer {
                    score += 10
                }
            case singleBtnFour:
                if currentAnswers[3] == quizQuestions[questionIndex].correctAnswer {
                    score += 10
                }
            default:
                break
            }
            nextQuestion()
    }
    
    func updateUI() {
        let currentQuestion = quizQuestions[questionIndex]
        let totalProgress = Float(questionIndex) /
            Float(quizQuestions.count)
        navigationItem.title = "Question #\(questionIndex + 1)"
        questionLabel.text = currentQuestion.text
        singleBtnOne.setTitle(currentQuestion.answers[0], for: .normal)
        singleBtnTwo.setTitle(currentQuestion.answers[1], for: .normal)
        singleBtnThree.setTitle(currentQuestion.answers[2], for: .normal)
        singleBtnFour.setTitle(currentQuestion.answers[3], for: .normal)
        quizProgress.setProgress(totalProgress, animated:
            true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLeaderboard" {
            
        }
        
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
