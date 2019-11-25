//
//  Question.swift
//  Quizzify
//
//  Created by Coded Professor on 25/11/2019.
//  Copyright © 2019 Coded Professor. All rights reserved.
//

import Foundation

class Question {
    let questionText: String
    let answer: Bool
    
    init(question: String, correctAnswer: Bool) {
        self.questionText = question
        self.answer = correctAnswer
    }
}
