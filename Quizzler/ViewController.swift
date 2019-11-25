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
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // When either true or false button is pressed
    @IBAction func answerPressed(_ sender: AnyObject) {
  
    }
    
    // Update the UI appearance with appropriate content
    func updateUI() {
      
    }
    
    // Update question text and check if end of question bank has been reached
    func nextQuestion() {
        
    }
    
    // Check if right answer was picked
    func checkAnswer() {
        
    }
    
    // Wipe board clean so that quiz can be retaken
    func startOver() {
       
    }
    

    
}
