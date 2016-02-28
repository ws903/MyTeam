//
//  ViewController.swift
//  QuizHW
//
//  Created by Lorenzo Llamas on 2/2/16.
//  Copyright © 2016 FinesseFilm Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func animateLabelTransitions() {
        //force any outstanding layout changes to occur
        view.layoutIfNeeded()
        //animate the alpha
        let screenWidth = view.frame.width
        self.nextQuestionLabelCenterXConstraint.constant = 0
        self.currentQuestionLabelCenterXConstraint.constant += screenWidth
        UIView.animateWithDuration( 0.5, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: [.CurveLinear], animations: { self.currentQuestionLabel.alpha = 0
            self.nextQuestionLabel.alpha = 1
            self.view.layoutIfNeeded()
            }, completion: { _ in
                swap(&self.currentQuestionLabel,
                    &self.nextQuestionLabel)
                swap(&self.currentQuestionLabelCenterXConstraint,
                    &self.nextQuestionLabelCenterXConstraint)
                self.updateOffScreenLabel()})
//        UIView.animateWithDuration(0.5,
//                                   delay: 0,
//                                   options: [.CurveLinear],
//            animations: {
//        self.currentQuestionLabel.alpha = 0
//        self.nextQuestionLabel.alpha = 1
//                self.view.layoutIfNeeded()
//            },
//            completion: { _ in
//                swap(&self.currentQuestionLabel,
//                &self.nextQuestionLabel)
//                swap(&self.currentQuestionLabelCenterXConstraint,
//                &self.nextQuestionLabelCenterXConstraint)
//                
//                self.updateOffScreenLabel()
//        })
        }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //set the label's initial alpha
        nextQuestionLabel.alpha = 0
    }
    @IBOutlet var currentQuestionLabel: UILabel!
    @IBOutlet var currentQuestionLabelCenterXConstraint: NSLayoutConstraint!
    
    @IBOutlet var nextQuestionLabel: UILabel!
    @IBOutlet var nextQuestionLabelCenterXConstraint: NSLayoutConstraint!

    @IBOutlet var answerLabel: UILabel!
    
    var currentIndex:Int = 0
    let questions:[String] = ["From what is cognac made?",
                    "What is 7+7",
                    "What is the capital of Vermont?"]
    let answers:[String] = ["Grapes",
                            "14",
                            "Montepelier"]
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentIndex
        if currentIndex == questions.count{
            currentIndex = 0
        }
        let question:String = questions[currentIndex]
        nextQuestionLabel.text = question
        answerLabel.text = "???"
        animateLabelTransitions()
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer:String = answers[currentIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let question = questions[currentIndex]
        currentQuestionLabel.text = question
        
        updateOffScreenLabel()
        //currentQuestionLabel.text = questions[currentIndex]
    }
    
    func updateOffScreenLabel() {
        let screenWidth = view.frame.width
        nextQuestionLabelCenterXConstraint.constant = -screenWidth
    }
    
}

