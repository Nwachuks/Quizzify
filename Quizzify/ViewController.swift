//
//  ViewController.swift
//  Quizzify
//
//  Created by Coded Professor on 25/11/2019.
//  Copyright © 2019 Coded Professor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Place your instance variables here
    let questionList = QuestionBank()
    var questionNumber: Int = 0
    var pickedAnswer: Bool = false
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }

    // When either true or false button is pressed
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber += 1
        
        nextQuestion()
    }
    
    // Update the UI appearance with appropriate content
    func updateUI() {
      
    }
    
    // Update question text and check if end of question bank has been reached
    func nextQuestion() {
        if questionNumber < 13 {
            questionLabel.text = questionList.questions[questionNumber].questionText
        } else {
            let alert = UIAlertController(title: "Cool!", message: "You've finished all questions, do you want to restart?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    // Check if right answer was picked
    func checkAnswer() {
        let correctAnswer = questionList.questions[questionNumber].answer
        if pickedAnswer == correctAnswer {
            print("You got it!")
        } else {
            print("You're wrong!")
        }
    }
    
    // Wipe board clean so that quiz can be retaken
    func startOver() {
        questionNumber = 0
        nextQuestion()
    }
    

    
}
