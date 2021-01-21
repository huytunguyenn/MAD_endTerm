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
    
    
    
    //---data
    var numTest: Int = 0
       //var exam = ExamA1(listNumericalQuestion: [(subType: 0, number: 0), (subType: 0, number: 1)], num_Exem: 1) // chuoi cau hoi
       var exam = Bank_ExamA1().listExam[0]
       var presentQuestion: Int = 0 //cau hoi hien tai
       var isfinshed: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadUI()

        // Do any additional setup after loading the view.
    }
    
    func loadUI(){
        checkTxt.isHidden = true
        numericQuestionTxt.text = "Câu 1/" + String(exam.amountQuestion)
        questionTxt.text = exam.listQuestion[0].question
        if (exam.listQuestion[0].isImage == true){
            imageQView.heightAnchor.constraint(equalToConstant: CGFloat(150)).isActive = true
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
        //button.backgroundColor = UIColor.red
     //   button.heightAnchor.constraint(equalTo: button.titleLabel.frame.size.height, multiplier: 1.2).isActive = true
    }
    

    @IBAction func nextClick(_ sender: Any) {
        
        if (presentQuestion < exam.amountQuestion - 1){
            presentQuestion += 1
            print(presentQuestion)
            questionTxt.text = exam.listQuestion[presentQuestion].question
            numericQuestionTxt.text = String(presentQuestion + 1) + "/" + String(exam.amountQuestion)
           // print("next CLICK" + String(presentQuestion))
       
            print (exam.listQuestion[presentQuestion].question)
            print (exam.listQuestion[presentQuestion].textQ?.optionA)
            print (exam.listQuestion[presentQuestion].textQ?.optionB)
            print (exam.listQuestion[presentQuestion].textQ?.optionC)
            print (exam.listQuestion[presentQuestion].textQ?.optionD)


            A_Btn.setTitle(exam.listQuestion[presentQuestion].textQ?.optionA, for: UIControl.State.normal)
            B_Btn.setTitle(exam.listQuestion[presentQuestion].textQ?.optionB, for: UIControl.State.normal)
            C_Btn.setTitle(exam.listQuestion[presentQuestion].textQ?.optionC, for: UIControl.State.normal)
            D_Btn.setTitle(exam.listQuestion[presentQuestion].textQ?.optionD, for: UIControl.State.normal)
           
            
            /*A_Btn.backgroundColor = UIColor.white
                       B_Btn.backgroundColor = UIColor.white
                       C_Btn.backgroundColor = UIColor.white
                       D_Btn.backgroundColor = UIColor.white
                       
                       if (exam.listQuestion[presentQuestion].selected == 1){
                           A_Btn.backgroundColor = UIColor.blue
                       }else  if (exam.listQuestion[presentQuestion].selected == 2){
                               B_Btn.backgroundColor = UIColor.blue
                       }else if (exam.listQuestion[presentQuestion].selected == 3){
                               C_Btn.backgroundColor = UIColor.blue
                       }else if (exam.listQuestion[presentQuestion].selected == 4){
                               D_Btn.backgroundColor = UIColor.blue
                       }*/
            A_Btn.backgroundColor = UIColor.white
            B_Btn.backgroundColor = UIColor.white
            C_Btn.backgroundColor = UIColor.white
            D_Btn.backgroundColor = UIColor.white
                                 
            
            if (isfinshed == true){
                          if (exam.listQuestion[presentQuestion].correctAswer == 1){
                              A_Btn.backgroundColor = UIColor.green
                          } else if (exam.listQuestion[presentQuestion].correctAswer == 2){
                              B_Btn.backgroundColor = UIColor.green
                          }else if (exam.listQuestion[presentQuestion].correctAswer == 3){
                              C_Btn.backgroundColor = UIColor.green
                          }else if (exam.listQuestion[presentQuestion].correctAswer == 4){
                              D_Btn.backgroundColor = UIColor.green
                          }
                          
                          if(exam.listQuestion[presentQuestion].selected != exam.listQuestion[presentQuestion].correctAswer){
                              checkTxt.backgroundColor = UIColor.red
                              checkTxt.text = "Sai!"
                              if (exam.listQuestion[presentQuestion].selected == 1){
                                             A_Btn.backgroundColor = UIColor.red
                                         } else if (exam.listQuestion[presentQuestion].selected == 2){
                                             B_Btn.backgroundColor = UIColor.red
                                         }else if (exam.listQuestion[presentQuestion].selected == 3){
                                             C_Btn.backgroundColor = UIColor.red
                                         }else if (exam.listQuestion[presentQuestion].selected == 4){
                                             D_Btn.backgroundColor = UIColor.red
                                         }
                          }
                          else{
                            checkTxt.backgroundColor = UIColor.green
                              checkTxt.text = "Đúng!"
                          }
            }else{

                          if (exam.listQuestion[presentQuestion].selected == 1){
                              A_Btn.backgroundColor = UIColor.blue
                          }else  if (exam.listQuestion[presentQuestion].selected == 2){
                                  B_Btn.backgroundColor = UIColor.blue
                          }else if (exam.listQuestion[presentQuestion].selected == 3){
                                  C_Btn.backgroundColor = UIColor.blue
                          }else if (exam.listQuestion[presentQuestion].selected == 4){
                                  D_Btn.backgroundColor = UIColor.blue
                          }
                          
                      }
                      
                       
            
        }
    }
    
     @IBAction func previousClick(_ sender: Any) {
        if (presentQuestion > 0){
             presentQuestion -= 1
             print(presentQuestion)
             questionTxt.text = exam.listQuestion[presentQuestion].question
             numericQuestionTxt.text = String(presentQuestion + 1) + "/" + String(exam.amountQuestion)
            // print("next CLICK" + String(presentQuestion))
        
             print (exam.listQuestion[presentQuestion].question)
             print (exam.listQuestion[presentQuestion].textQ?.optionA)
             print (exam.listQuestion[presentQuestion].textQ?.optionB)
             print (exam.listQuestion[presentQuestion].textQ?.optionC)
             print (exam.listQuestion[presentQuestion].textQ?.optionD)


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
                    A_Btn.backgroundColor = UIColor.green
                } else if (exam.listQuestion[presentQuestion].correctAswer == 2){
                    B_Btn.backgroundColor = UIColor.green
                }else if (exam.listQuestion[presentQuestion].correctAswer == 3){
                    C_Btn.backgroundColor = UIColor.green
                }else if (exam.listQuestion[presentQuestion].correctAswer == 4){
                    D_Btn.backgroundColor = UIColor.green
                }
                
                if(exam.listQuestion[presentQuestion].selected != exam.listQuestion[presentQuestion].correctAswer){
                    checkTxt.backgroundColor = UIColor.red
                    checkTxt.text = "Sai!"
                    if (exam.listQuestion[presentQuestion].selected == 1){
                                   A_Btn.backgroundColor = UIColor.red
                               } else if (exam.listQuestion[presentQuestion].selected == 2){
                                   B_Btn.backgroundColor = UIColor.red
                               }else if (exam.listQuestion[presentQuestion].selected == 3){
                                   C_Btn.backgroundColor = UIColor.red
                               }else if (exam.listQuestion[presentQuestion].selected == 4){
                                   D_Btn.backgroundColor = UIColor.red
                               }
                }
                else{
                    checkTxt.backgroundColor = UIColor.green
                    checkTxt.text = "Đúng!"
                }
            }else{

                if (exam.listQuestion[presentQuestion].selected == 1){
                    A_Btn.backgroundColor = UIColor.blue
                }else  if (exam.listQuestion[presentQuestion].selected == 2){
                        B_Btn.backgroundColor = UIColor.blue
                }else if (exam.listQuestion[presentQuestion].selected == 3){
                        C_Btn.backgroundColor = UIColor.blue
                }else if (exam.listQuestion[presentQuestion].selected == 4){
                        D_Btn.backgroundColor = UIColor.blue
                }
                
            }
            
          
             
         }
     }
    
    @IBAction func A_Click(_ sender: Any) {
        if (isfinshed == false){
            A_Btn.backgroundColor = UIColor.blue
             B_Btn.backgroundColor = UIColor.white
             C_Btn.backgroundColor = UIColor.white
             D_Btn.backgroundColor = UIColor.white
             
             exam.listQuestion[presentQuestion].selected = 1
        }
 
    }
    
    @IBAction func B_Click(_ sender: Any) {
        if (isfinshed == false){
            B_Btn.backgroundColor = UIColor.blue
              A_Btn.backgroundColor = UIColor.white
                C_Btn.backgroundColor = UIColor.white
                D_Btn.backgroundColor = UIColor.white
              
              exam.listQuestion[presentQuestion].selected = 2

        }
  
    }
    
    @IBAction func C_Click(_ sender: Any) {
        if (isfinshed == false){
            C_Btn.backgroundColor = UIColor.blue
              B_Btn.backgroundColor = UIColor.white
                A_Btn.backgroundColor = UIColor.white
                D_Btn.backgroundColor = UIColor.white

              
              exam.listQuestion[presentQuestion].selected = 3

        }
  
    }
    
    @IBAction func D_Click(_ sender: Any) {
        if (isfinshed == false){
            D_Btn.backgroundColor = UIColor.blue
              B_Btn.backgroundColor = UIColor.white
                C_Btn.backgroundColor = UIColor.white
                A_Btn.backgroundColor = UIColor.white
              
              exam.listQuestion[presentQuestion].selected = 4

        }
  
    }
    
    @IBAction func finish_Click(_ sender: Any) {
        
        if (isfinshed == false){
            checkTxt.isHidden = false
            checkTxt.backgroundColor = UIColor.green
            isfinshed = true
            A_Btn.backgroundColor = UIColor.white
            B_Btn.backgroundColor = UIColor.white
            C_Btn.backgroundColor = UIColor.white
            D_Btn.backgroundColor = UIColor.white
                   
            
            if (exam.listQuestion[presentQuestion].correctAswer == 1){
                A_Btn.backgroundColor = UIColor.green
            } else if (exam.listQuestion[presentQuestion].correctAswer == 2){
                B_Btn.backgroundColor = UIColor.green
            }else if (exam.listQuestion[presentQuestion].correctAswer == 3){
                C_Btn.backgroundColor = UIColor.green
            }else if (exam.listQuestion[presentQuestion].correctAswer == 4){
                D_Btn.backgroundColor = UIColor.green
            }
            
            if(exam.listQuestion[presentQuestion].selected != exam.listQuestion[presentQuestion].correctAswer){
                checkTxt.backgroundColor = UIColor.red
                checkTxt.text = "Sai!"
                if (exam.listQuestion[presentQuestion].selected == 1){
                               A_Btn.backgroundColor = UIColor.red
                           } else if (exam.listQuestion[presentQuestion].selected == 2){
                               B_Btn.backgroundColor = UIColor.red
                           }else if (exam.listQuestion[presentQuestion].selected == 3){
                               C_Btn.backgroundColor = UIColor.red
                           }else if (exam.listQuestion[presentQuestion].selected == 4){
                               D_Btn.backgroundColor = UIColor.red
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

}
