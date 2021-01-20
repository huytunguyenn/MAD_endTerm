//
//  FinishQuizViewController.swift
//  DrivTest
//
//  Created by HUYTU on 1/21/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class FinishQuizViewController: UIViewController {
    
    
    var type: Int = -1; // license type (A1,A2,B1,B2,C,F)
    var subtype: Int = -1; // question type (cauhoidiemliet,khainiemquytac,hethongbienbao,vanhoadaoduc,cauhoisahinh)
    var totalQuestions:Int = 0
    var score:Int = 0
    
    //outlets
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var redoButton: UIButton!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var subTypeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var totalQuestionsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // show license type
        if (type == 0){
            typeLabel.text = "A1"
        }else if(type==1){
            typeLabel.text = "A2"
        }else if(type==2){
            typeLabel.text = "B1"
        }else if(type==3){
            typeLabel.text = "B2"
        }else if(type==4){
            typeLabel.text = "C"
        }else{
            typeLabel.text = "F"
        }
        // show question type
        if (subtype == 0){
            subTypeLabel.text = "Câu Hỏi Điểm Liệt"
        }else if(subtype==1){
            subTypeLabel.text = "Khái Niệm & Quy Tắc"
        }else if(subtype==2){
            subTypeLabel.text = "Hệ Thống Biển Báo"
        }else if(subtype==3){
            subTypeLabel.text = "Văn Hoá & Đạo Đức"
        }else{
            subTypeLabel.text = "Câu Hỏi Sa Hình"
        }
        // show score & total quest
        scoreLabel.text = String(score)
        totalQuestionsLabel.text = String(totalQuestions)
        
        
    }
    
    // restart quiz
    @IBAction func redoButtonTapped(_ sender: Any) {
        
        let dest = storyboard?.instantiateViewController(identifier: "QuizViewController") as! QuizViewController
        dest.type = type // license type (A1,A2,B1,B2,C,F)
        dest.subtype = subtype // question type (cauhoidiemliet,khainiemquytac,hethongbienbao,vanhoadaoduc,cauhoisahinh)
        dest.modalPresentationStyle = .fullScreen
        self.present(dest, animated: true, completion: nil)
    }
    
    // back to license VC
    @IBAction func backButtonTapped(_ sender: Any) {
        
        let dest = storyboard?.instantiateViewController(identifier: "LicenseViewController") as! LicenseViewController
        dest.type = type
        // back trasistion (from top to bottom)
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromBottom
        view.window!.layer.add(transition, forKey: kCATransition)
        dest.modalPresentationStyle = .fullScreen
        self.present(dest, animated: true, completion: nil)
    }
    
}
