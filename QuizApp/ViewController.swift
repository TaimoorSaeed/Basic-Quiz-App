//
//  ViewController.swift
//  QuizApp
//
//  Created by Nano Degree on 02/02/2017.
//  Copyright © 2017 Swift Pakistan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var answerLabel: UILabel!
    
    let questions : [String] = ["What is 7+7?","What is the capital of Pakistan?","What is water made of?"]
    
    let answers : [String] = ["14","Islamabad","Hydrogen & Oxygen"]
    
    var currentQuesionIndex: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuesionIndex]
        answerLabel.text = ""

    }
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuesionIndex += 1
//        NSLog(String(currentQuesionIndex))
        if currentQuesionIndex == questions.count {
            currentQuesionIndex = 0
        }
        
        let question : String = questions[currentQuesionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }

    @IBAction func showAnwer(_ sender:UIButton){
        let answer : String = answers[currentQuesionIndex]
        answerLabel.text = answer
    }
}
