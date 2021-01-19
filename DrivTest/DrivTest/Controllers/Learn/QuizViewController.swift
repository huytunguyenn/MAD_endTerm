//
//  QuizViewController.swift
//  DrivTest
//
//  Created by HUYTU on 1/19/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    // type variables
    var type: Int = -1; // license type (A1,A2,B1,B2,C,F)
    var subtype: Int = -1; // question type (cauhoidiemliet,khainiemquytac,hethongbienbao,vanhoadaoduc,cauhoisahinh)
    
    //outlets
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    
    // init list of questions
    let allQuestions = QuestionBank()
    // count variables
    var questionNumber:Int = 0
    var score:Int = 0
    var selectedAnswer:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // center text in answer button
        aButton.titleLabel!.textAlignment = .center
        aButton.titleLabel!.numberOfLines = 0
        bButton.titleLabel!.textAlignment = .center
        bButton.titleLabel!.numberOfLines = 0
        cButton.titleLabel!.textAlignment = .center
        cButton.titleLabel!.numberOfLines = 0
        dButton.titleLabel!.textAlignment = .center
        dButton.titleLabel!.numberOfLines = 0
        
        updateQuestion()
        updateUI()
        
        
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer { // corrected answer
            score += 1
            print("correct")
            
        }else { // wrong answer
            print("wrong")
        }
        
        // move to next question
        questionNumber += 1
        updateQuestion()
        
    }
    
    
    
    @IBAction func exitButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // update question & answers
    func updateQuestion(){
        
        if (questionNumber < allQuestions.list.count){
            //flagview.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            questionLabel.text = allQuestions.list[questionNumber].question
            aButton.setTitle(allQuestions.list[questionNumber].optionA, for: .normal)
            bButton.setTitle(allQuestions.list[questionNumber].optionB, for: .normal)
            cButton.setTitle(allQuestions.list[questionNumber].optionC, for: .normal)
            dButton.setTitle(allQuestions.list[questionNumber].optionD, for: .normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
        }else{
            // go to finish view
            
            // restart quiz
            restartQuiz()
        }
        updateUI()
    }
    
    // update progress view, question counter, score
    func updateUI(){
        scoreLabel.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
    }
    
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
    }
}
