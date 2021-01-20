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
    @IBOutlet weak var nextButton: UIButton!
    
    // init list of questions
    lazy var allQuestions = QuestionBank(type: type,subtype: subtype)

    // count variables
    var questionNumber:Int = 0
    var score:Int = 0
    var selectedAnswer:Int = 0
    var hasWrong:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // center text in answer button
        aButton.titleLabel!.textAlignment = .center
        aButton.titleLabel!.numberOfLines = 0
        aButton.layer.cornerRadius = 12
        aButton.clipsToBounds = true
        aButton.titleEdgeInsets = UIEdgeInsets(top: 12,left: 12,bottom: 12,right: 12)
        // Shadow Color
        aButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        aButton.layer.shadowOffset = CGSize(width: 0.0, height: 2.5)
        aButton.layer.shadowOpacity = 1.0
        aButton.layer.shadowRadius = 0.0
        aButton.layer.masksToBounds = false
        
        bButton.titleLabel!.textAlignment = .center
        bButton.titleLabel!.numberOfLines = 0
        bButton.layer.cornerRadius = 12
        bButton.clipsToBounds = true
        bButton.titleEdgeInsets = UIEdgeInsets(top: 12,left: 12,bottom: 12,right: 12)
        bButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        bButton.layer.shadowOffset = CGSize(width: 0.0, height: 2.5)
        bButton.layer.shadowOpacity = 1.0
        bButton.layer.shadowRadius = 0.0
        bButton.layer.masksToBounds = false
        
        cButton.titleLabel!.textAlignment = .center
        cButton.titleLabel!.numberOfLines = 0
        cButton.layer.cornerRadius = 12
        cButton.clipsToBounds = true
        cButton.titleEdgeInsets = UIEdgeInsets(top: 12,left: 12,bottom: 12,right: 12)
        cButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        cButton.layer.shadowOffset = CGSize(width: 0.0, height: 2.5)
        cButton.layer.shadowOpacity = 1.0
        cButton.layer.shadowRadius = 0.0
        cButton.layer.masksToBounds = false
        
        dButton.titleLabel!.textAlignment = .center
        dButton.titleLabel!.numberOfLines = 0
        dButton.layer.cornerRadius = 12
        dButton.clipsToBounds = true
        dButton.titleEdgeInsets = UIEdgeInsets(top: 12,left: 12,bottom: 12,right: 12)
        dButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        dButton.layer.shadowOffset = CGSize(width: 0.0, height: 2.5)
        dButton.layer.shadowOpacity = 1.0
        dButton.layer.shadowRadius = 0.0
        dButton.layer.masksToBounds = false
        
        // hide next button
        nextButton.isHidden = true
        
        updateQuestion()
        updateUI()
        
        
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        normalizeButton()
        if (sender.tag == selectedAnswer) { // corrected answer
            if (hasWrong == false){
                // increase score
                score += 1
            }
         
            // change to green button
            sender.backgroundColor = UIColor(red: 0.76, green: 0.88, blue: 0.77, alpha: 1.00)
            sender.layer.shadowColor = UIColor(red: 0.00, green: 0.55, blue: 0.01, alpha: 1.00).cgColor
            // show next button
            nextButton.isHidden = false
        }else { // wrong answer
            // change to red button
            sender.backgroundColor = UIColor(red: 0.98, green: 0.82, blue: 0.76, alpha: 1.00)
            sender.layer.shadowColor = UIColor(red: 0.86, green: 0.24, blue: 0.00, alpha: 1.00).cgColor
            
            hasWrong = true
        }
        
        
    }
    
    // tap '->' button
    @IBAction func nextButtonTapped(_ sender: Any) {
        hasWrong = false
        // move to next question
        questionNumber += 1
        // change answer button to normal
        normalizeButton()
        updateQuestion()
    }
    
    
    // tap 'X' button
    @IBAction func exitButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // update question & answers
    func updateQuestion(){
        if (questionNumber < allQuestions.list.count){
            // update question
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
    
    // change buttons to normal
    func normalizeButton(){
        // hide next button
        nextButton.isHidden = true
        // reset answer button
        aButton.backgroundColor = .white
        aButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        bButton.backgroundColor = .white
        bButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        cButton.backgroundColor = .white
        cButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        dButton.backgroundColor = .white
        dButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
    }
    
    // update progress view, question counter, score
    func updateUI(){
        scoreLabel.text = "Số câu đúng: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
    }
    
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
    }
}
