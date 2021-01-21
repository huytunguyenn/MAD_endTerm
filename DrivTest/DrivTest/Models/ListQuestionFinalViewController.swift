//
//  ListQuestionFinalViewController.swift
//  DrivTest
//
//  Created by Dương Long on 1/20/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class ListQuestionFinalViewController: UIViewController {
    @IBOutlet var numericQuestionTxt: UILabel!
    @IBOutlet var questionTxt: UILabel!
    @IBOutlet var imageQView: UIImageView!
    
    @IBOutlet var A_Btn: UIButton!
    
    @IBOutlet var B_Btn: UIButton!
    
    @IBOutlet var C_Btn: UIButton!
    
    @IBOutlet var D_Btn: UIButton!
    
    @IBOutlet var finish_Btn: UIButton!
    
    
    
    //---data
    var numTest: Int = 0
       //var exam = ExamA1(listNumericalQuestion: [(subType: 0, number: 0), (subType: 0, number: 1)], num_Exem: 1) // chuoi cau hoi
       var exam = Bank_ExamA1().listExam[0]
       var presentQuestion: Int = 0 //cau hoi hien tai
       var isfinshed: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func loadUI(){
        numericQuestionTxt.text = "Câu 1/" + String(exam.amountQuestion)
        questionTxt.text = exam.listQuestion[0].question
        if (exam.listQuestion[0].isImage == true){
            imageQView.heightAnchor.constraint(equalToConstant: CGFloat(150)).isActive = true
        }
        else{
            imageQView.heightAnchor.constraint(equalToConstant: CGFloat(150)).isActive = true
        }
        
        A_Btn.titleLabel?.text = exam.listQuestion[0].textQ?.optionA
        
         B_Btn.titleLabel?.text = exam.listQuestion[0].textQ?.optionB
         C_Btn.titleLabel?.text = exam.listQuestion[0].textQ?.optionC
         D_Btn.titleLabel?.text = exam.listQuestion[0].textQ?.optionD
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
