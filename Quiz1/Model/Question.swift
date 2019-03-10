//
//  Question.swift
//  Quiz1
//
//  Created by Anna Hacksell Lindberg on 2019-02-02.
//  Copyright © 2019 Anna Hacksell Lindberg. All rights reserved.
//

import Foundation

class Question{
    let question : String
    let option1 : String
    let optionX : String
    let option2 : String
    let correctAnswer : Int
    
    init(questionText: String, choice1: String, choicex: String, choice2: String, answer: Int){
        question = questionText
        option1 = choice1
        optionX = choicex
        option2 = choice2
        correctAnswer = answer
    }
}
