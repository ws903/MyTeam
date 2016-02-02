//
//  ViewController.swift
//  QuizHW
//
//  Created by Lorenzo Llamas on 2/2/16.
//  Copyright © 2016 FinesseFilm Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!

    @IBOutlet weak var answerLabel: UILabel!
    
    var currentIndex:Int = 0
    let questions:[String] = ["From what is cognac made?",
                    "What is 7+7",
                    "What is the capital of Vermont?"]
    let answers:[String] = ["Grapes",
                            "14",
                            "Montepelier"]
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentIndex
        if currentIndex >= questions.count{
            currentIndex = 0
        }
        let question:String = questions[currentIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer:String = answers[currentIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentIndex]
    }
    
}

