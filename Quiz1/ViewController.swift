//
//  ViewController.swift
//  Quiz1
//
//  Created by Anna Hacksell Lindberg on 2019-02-02.
//  Copyright © 2019 Anna Hacksell Lindberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var optionX: UIButton!
    @IBOutlet weak var option2: UIButton!
    
    
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
        
    }
    var chosenLanguage: String = ""
    
    
    
    @IBAction func answerPressed(_ sender: UIButton){
        if sender.tag == selectedAnswer{
            score += 1
        }else{
            score -= 1
        }
        questionNumber += 1
        updateQuestion()
        
        
    }
    func updateQuestion(){
        print(questionNumber)
        print(allQuestions.enList.count)
        print(allQuestions.svList.count)
        
        
        var languageQuestions = [Question]()
        
        if chosenLanguage == "svenska"{
            languageQuestions = allQuestions.svList
            
        }
        else{
            languageQuestions = allQuestions.enList
            
        }
        
        
        print(languageQuestions.count)
        if questionNumber < languageQuestions.count{
            print (questionNumber)
            
            questionLabel.text = languageQuestions[questionNumber].question
            option1.setTitle(languageQuestions[questionNumber].option1, for:UIControl.State.normal)
            optionX.setTitle(languageQuestions[questionNumber].optionX, for:UIControl.State.normal)
            option2.setTitle(languageQuestions[questionNumber].option2, for:UIControl.State.normal)
            selectedAnswer = languageQuestions[questionNumber].correctAnswer
        }
        else{
            
            if chosenLanguage == "svenska"{
                let alert = UIAlertController(title:"Slut!", message:"Inga fler frågor. Vill du börja om?", preferredStyle: .alert)
                let restartAction = UIAlertAction(title: "Börja om", style: .default, handler:{action in self.restartQuiz()})
                alert.addAction(restartAction)
                present(alert, animated: true, completion: nil)
            }
            else{
                let alert = UIAlertController(title:"The end!", message:"No more questions. Do you want to start over again?", preferredStyle: .alert)
                let restartAction = UIAlertAction(title: "Start over", style: .default, handler: {action in self.restartQuiz()})
                alert.addAction(restartAction)
                present(alert, animated: true, completion: nil)
            }
            
        }
        updateUI()
    }
    
        
        func updateUI(){
            scoreLabel.text = "Score: \(score)"
            questionCounter.text = "\(questionNumber + 1)/\(allQuestions.enList.count)"
            questionCounter.text = "\(questionNumber + 1)/\(allQuestions.svList.count)"
            
            
            
        }
        
        func restartQuiz(){
            score = 0
            questionNumber = 0
            updateQuestion()
            
        }
        
    }
    

