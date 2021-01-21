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
    
    @IBOutlet var checkTxt: UILabel!
    
    @IBOutlet var A_Btn: UIButton!
    
    @IBOutlet var B_Btn: UIButton!
    
    @IBOutlet var C_Btn: UIButton!
    
    @IBOutlet var D_Btn: UIButton!
    
    @IBOutlet var finish_Btn: UIButton!
    
    
    @IBOutlet var paralysTxt: UILabel!
    
    
    
    //---data
    var numTest: Int = 0
    //var exam = ExamA1(listNumericalQuestion: [(subType: 0, number: 0), (subType: 0, number: 1)], num_Exem: 1) // chuoi cau hoi
    let exam = Bank_ExamA1().listExam[0]
    var presentQuestion: Int = 0 //cau hoi hien tai
    var isfinshed: Bool = false
    
    var isPassed = false
    var amountCorrect = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadUI()
        
        // Do any additional setup after loading the view.
    }
    
    func loadUI(){
        checkTxt.isHidden = true
        paralysTxt.isHidden = true
        numericQuestionTxt.text = "Câu 1/" + String(exam.amountQuestion)
        questionTxt.text = exam.listQuestion[0].question
        if (exam.listQuestion[0].isImage == true){
            imageQView.heightAnchor.constraint(equalToConstant: CGFloat(120)).isActive = true
        }
        else{
            imageQView.heightAnchor.constraint(equalToConstant: CGFloat(0)).isActive = true
        }
        
        A_Btn.setTitle(exam.listQuestion[0].textQ?.optionA, for: UIControl.State.normal)
        B_Btn.setTitle(exam.listQuestion[0].textQ?.optionB, for: UIControl.State.normal)
        C_Btn.setTitle(exam.listQuestion[0].textQ?.optionC, for: UIControl.State.normal)
        D_Btn.setTitle(exam.listQuestion[0].textQ?.optionD, for: UIControl.State.normal)
        
        
        CustomizeButton(button: A_Btn)
        CustomizeButton(button: B_Btn)
        CustomizeButton(button: C_Btn)
        CustomizeButton(button: D_Btn)
        
        finish_Btn.layer.cornerRadius = 15
        
    }
    
    func CustomizeButton(button: UIButton){
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        // button.layer.borderColor = UIColor.black.cgColor
        //button.layer.borderWidth = 1
        //button.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
        //   button.heightAnchor.constraint(equalTo: button.titleLabel.frame.size.height, multiplier: 1.2).isActive = true
    }
    
    
    @IBAction func nextClick(_ sender: Any) {
        
        if (presentQuestion < exam.amountQuestion - 1){
            presentQuestion += 1
           // print(presentQuestion)
            questionTxt.text = exam.listQuestion[presentQuestion].question
            numericQuestionTxt.text = String(presentQuestion + 1) + "/" + String(exam.amountQuestion)
            // print("next CLICK" + String(presentQuestion))
            
           /* print (exam.listQuestion[presentQuestion].question)
            print (exam.listQuestion[presentQuestion].textQ?.optionA)
            print (exam.listQuestion[presentQuestion].textQ?.optionB)
            print (exam.listQuestion[presentQuestion].textQ?.optionC)
            print (exam.listQuestion[presentQuestion].textQ?.optionD)*/
            
            
            A_Btn.setTitle(exam.listQuestion[presentQuestion].textQ?.optionA, for: UIControl.State.normal)
            B_Btn.setTitle(exam.listQuestion[presentQuestion].textQ?.optionB, for: UIControl.State.normal)
            C_Btn.setTitle(exam.listQuestion[presentQuestion].textQ?.optionC, for: UIControl.State.normal)
            D_Btn.setTitle(exam.listQuestion[presentQuestion].textQ?.optionD, for: UIControl.State.normal)
            
            
            /*A_Btn.backgroundColor = UIColor.white
             B_Btn.backgroundColor = UIColor.white
             C_Btn.backgroundColor = UIColor.white
             D_Btn.backgroundColor = UIColor.white
             
             if (exam.listQuestion[presentQuestion].selected == 1){
             A_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
             }else  if (exam.listQuestion[presentQuestion].selected == 2){
             B_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
             }else if (exam.listQuestion[presentQuestion].selected == 3){
             C_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
             }else if (exam.listQuestion[presentQuestion].selected == 4){
             D_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
             }*/
            A_Btn.backgroundColor = UIColor.white
            B_Btn.backgroundColor = UIColor.white
            C_Btn.backgroundColor = UIColor.white
            D_Btn.backgroundColor = UIColor.white
            
            
            if (isfinshed == true){
                if (exam.listQuestion[presentQuestion].correctAswer == 1){
                    A_Btn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
                } else if (exam.listQuestion[presentQuestion].correctAswer == 2){
                    B_Btn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
                }else if (exam.listQuestion[presentQuestion].correctAswer == 3){
                    C_Btn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
                }else if (exam.listQuestion[presentQuestion].correctAswer == 4){
                    D_Btn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
                }
                
                if(exam.listQuestion[presentQuestion].selected != exam.listQuestion[presentQuestion].correctAswer){
                    checkTxt.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                    checkTxt.text = "Sai!"
                    if (exam.listQuestion[presentQuestion].selected == 1){
                        A_Btn.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                    } else if (exam.listQuestion[presentQuestion].selected == 2){
                        B_Btn.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                    }else if (exam.listQuestion[presentQuestion].selected == 3){
                        C_Btn.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                    }else if (exam.listQuestion[presentQuestion].selected == 4){
                        D_Btn.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                    }
                }
                else{
                    checkTxt.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
                    checkTxt.text = "Đúng!"
                }
                if (exam.listQuestion[presentQuestion].isParalysis == true){
                    paralysTxt.isHidden = false
                    
                }else{
                    paralysTxt.isHidden = true
                    
                }
                
            }else{
                
                if (exam.listQuestion[presentQuestion].selected == 1){
                    A_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
                }else  if (exam.listQuestion[presentQuestion].selected == 2){
                    B_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
                }else if (exam.listQuestion[presentQuestion].selected == 3){
                    C_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
                }else if (exam.listQuestion[presentQuestion].selected == 4){
                    D_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
                }
                
            }
            
            
            
        }
    }
    
    @IBAction func previousClick(_ sender: Any) {
        if (presentQuestion > 0){
            presentQuestion -= 1
            //print(presentQuestion)
            questionTxt.text = exam.listQuestion[presentQuestion].question
            numericQuestionTxt.text = String(presentQuestion + 1) + "/" + String(exam.amountQuestion)
            // print("next CLICK" + String(presentQuestion))
            
           /* print (exam.listQuestion[presentQuestion].question)
            print (exam.listQuestion[presentQuestion].textQ?.optionA)
            print (exam.listQuestion[presentQuestion].textQ?.optionB)
            print (exam.listQuestion[presentQuestion].textQ?.optionC)
            print (exam.listQuestion[presentQuestion].textQ?.optionD)*/
            
            
            A_Btn.setTitle(exam.listQuestion[presentQuestion].textQ?.optionA, for: UIControl.State.normal)
            B_Btn.setTitle(exam.listQuestion[presentQuestion].textQ?.optionB, for: UIControl.State.normal)
            C_Btn.setTitle(exam.listQuestion[presentQuestion].textQ?.optionC, for: UIControl.State.normal)
            D_Btn.setTitle(exam.listQuestion[presentQuestion].textQ?.optionD, for: UIControl.State.normal)
            
            
            A_Btn.backgroundColor = UIColor.white
            B_Btn.backgroundColor = UIColor.white
            C_Btn.backgroundColor = UIColor.white
            D_Btn.backgroundColor = UIColor.white
            
            if (isfinshed == true){
                if (exam.listQuestion[presentQuestion].correctAswer == 1){
                    A_Btn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
                } else if (exam.listQuestion[presentQuestion].correctAswer == 2){
                    B_Btn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
                }else if (exam.listQuestion[presentQuestion].correctAswer == 3){
                    C_Btn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
                }else if (exam.listQuestion[presentQuestion].correctAswer == 4){
                    D_Btn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
                }
                
                if(exam.listQuestion[presentQuestion].selected != exam.listQuestion[presentQuestion].correctAswer){
                    checkTxt.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                    checkTxt.text = "Sai!"
                    if (exam.listQuestion[presentQuestion].selected == 1){
                        A_Btn.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                    } else if (exam.listQuestion[presentQuestion].selected == 2){
                        B_Btn.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                    }else if (exam.listQuestion[presentQuestion].selected == 3){
                        C_Btn.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                    }else if (exam.listQuestion[presentQuestion].selected == 4){
                        D_Btn.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                    }
                }
                else{
                    checkTxt.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
                    checkTxt.text = "Đúng!"
                }
                if (exam.listQuestion[presentQuestion].isParalysis == true){
                    paralysTxt.isHidden = false
                    
                }else{
                    paralysTxt.isHidden = true
                    
                }
            }else{
                
                if (exam.listQuestion[presentQuestion].selected == 1){
                    A_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
                }else  if (exam.listQuestion[presentQuestion].selected == 2){
                    B_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
                }else if (exam.listQuestion[presentQuestion].selected == 3){
                    C_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
                }else if (exam.listQuestion[presentQuestion].selected == 4){
                    D_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
                }
                
            }
            
            
            
        }
    }
    
    @IBAction func A_Click(_ sender: Any) {
        if (isfinshed == false){
            A_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
            B_Btn.backgroundColor = UIColor.white
            C_Btn.backgroundColor = UIColor.white
            D_Btn.backgroundColor = UIColor.white
            
            exam.listQuestion[presentQuestion].selected = 1
        }
        
    }
    
    @IBAction func B_Click(_ sender: Any) {
        if (isfinshed == false){
            B_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
            A_Btn.backgroundColor = UIColor.white
            C_Btn.backgroundColor = UIColor.white
            D_Btn.backgroundColor = UIColor.white
            
            exam.listQuestion[presentQuestion].selected = 2
            
        }
        
    }
    
    @IBAction func C_Click(_ sender: Any) {
        if (isfinshed == false){
            C_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
            B_Btn.backgroundColor = UIColor.white
            A_Btn.backgroundColor = UIColor.white
            D_Btn.backgroundColor = UIColor.white
            
            
            exam.listQuestion[presentQuestion].selected = 3
            
        }
        
    }
    
    @IBAction func D_Click(_ sender: Any) {
        if (isfinshed == false){
            D_Btn.backgroundColor = UIColor(red: 118/255, green: 209/255, blue: 251/255, alpha: 1)
            B_Btn.backgroundColor = UIColor.white
            C_Btn.backgroundColor = UIColor.white
            A_Btn.backgroundColor = UIColor.white
            
            exam.listQuestion[presentQuestion].selected = 4
            
        }
        
    }
    
    @IBAction func finish_Click(_ sender: Any) {
        
        checkResult()
        if (isPassed == true){
            AlertView.instance.showAlert(typeAlert: "pass", correctAnswer: amountCorrect)
        }else{
            AlertView.instance.showAlert(typeAlert: "fail", correctAnswer: amountCorrect)
        }
        
        if (isfinshed == false){
            checkTxt.isHidden = false
            checkTxt.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
            isfinshed = true
            A_Btn.backgroundColor = UIColor.white
            B_Btn.backgroundColor = UIColor.white
            C_Btn.backgroundColor = UIColor.white
            D_Btn.backgroundColor = UIColor.white
            
            
            if (exam.listQuestion[presentQuestion].correctAswer == 1){
                A_Btn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
            } else if (exam.listQuestion[presentQuestion].correctAswer == 2){
                B_Btn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
            }else if (exam.listQuestion[presentQuestion].correctAswer == 3){
                C_Btn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
            }else if (exam.listQuestion[presentQuestion].correctAswer == 4){
                D_Btn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 17/255, alpha: 0.35)
            }
            
            if(exam.listQuestion[presentQuestion].selected != exam.listQuestion[presentQuestion].correctAswer){
                checkTxt.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                checkTxt.text = "Sai!"
                if (exam.listQuestion[presentQuestion].selected == 1){
                    A_Btn.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                } else if (exam.listQuestion[presentQuestion].selected == 2){
                    B_Btn.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                }else if (exam.listQuestion[presentQuestion].selected == 3){
                    C_Btn.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                }else if (exam.listQuestion[presentQuestion].selected == 4){
                    D_Btn.backgroundColor = UIColor(red: 247/255, green: 57/255, blue: 61/255, alpha: 0.35)
                }
            }
            else{
                checkTxt.text = "Đúng!"
            }
        }
    }
    
    
    // MARK: - Navigation
    /*
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    @IBAction func diffQClick(_ sender: Any) {
        // AlertView.instance.showAlert(typeAlert: "pass", correctAnswer: 12)
    }
    
    private func checkResult(){
        var fail: Bool = false
        for temp in exam.listQuestion{
            if (temp.selected != temp.correctAswer){
                if (temp.isParalysis == true){
                    fail = true
                }
            }else{
                amountCorrect = amountCorrect + 1
            }
        }
        if (fail == true){
            isPassed = false
        }else{
            if (amountCorrect >= 12){
                isPassed = false
            }else{
                isPassed = true
            }
        }
    }
    
}
