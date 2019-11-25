//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Coded Professor on 25/11/2019.
//  Copyright © 2019 Coded Professor. All rights reserved.
//

import Foundation

class QuestionBank {
    var questions = [Question]()
    
    init() {
        // Create a question
        let item = Question(question: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true)
        
        // Add the Question to the list of questions
        questions.append(item)
        
        // Create a question and add it to the list of questions
        questions.append(Question(question: "A slug\'s blood is green.", correctAnswer: true))
        
        questions.append(Question(question: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
        
        questions.append(Question(question: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
        
        questions.append(Question(question: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
        
        questions.append(Question(question: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
        
        questions.append(Question(question: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
        
        questions.append(Question(question: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
        
        questions.append(Question(question: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        questions.append(Question(question: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        questions.append(Question(question: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        questions.append(Question(question: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        questions.append(Question(question: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
    }
}
