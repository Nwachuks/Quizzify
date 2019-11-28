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
        
        questionLabel.text = questionList.questions[questionNumber].questionText
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
            print("End of quiz")
            questionNumber = 0
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
       
    }
    

    
}
