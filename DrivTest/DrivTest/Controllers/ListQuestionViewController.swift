//
//  ListQuestionViewController.swift
//  DrivTest
//
//  Created by Dương Long on 1/18/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import UIKit

protocol ParentControllerDelegate{
    func requestReloadTable()
}



class ListQuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var finishBtn: UIButton!
    
    @IBOutlet var questionTxt: UILabel!
    @IBOutlet var imageQuestion: UIImageView!
    
    
    @IBOutlet var difficultQuestionBtn: UIButton!
    
    @IBOutlet var listAnserView: UITableView!
    
    //---------------------------------- data
    
    var numTest: Int = 0
    var exam = ExamA1(listNumericalQuestion: [(subType: 0, number: 0), (subType: 0, number: 1)], num_Exem: 1) // chuoi cau hoi
    var presentQuestion: Int = 0 //cau hoi hien tai
    var isfinshed: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listAnserView.dataSource = self
        listAnserView.delegate = self
        
        finishBtn.layer.cornerRadius = 15
        finishBtn.layer.borderWidth = 1
        finishBtn.layer.borderColor = UIColor.black.cgColor
        
        if (numTest % 2 == 0){
            imageQuestion.heightAnchor.constraint(equalToConstant: CGFloat(150)).isActive = true
        }
        else{
            imageQuestion.heightAnchor.constraint(equalToConstant: CGFloat(0)).isActive = true
        }


        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listAnserView.dequeueReusableCell(withIdentifier: "QuestionTableViewCell") as! QuestionTableViewCell
        print("*****************************")
        if (indexPath.row == 0){
            cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionA
        }
        else if (indexPath.row == 1){
            cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionB
        }
        else if (indexPath.row == 2){
            cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionC
        }
        else if (indexPath.row == 3){
            cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionD
        }
        print(exam.listQuestion[presentQuestion].selected)
        if (exam.listQuestion[presentQuestion].selected == -1){
            cell.layer.backgroundColor = UIColor.white.cgColor
        }
        else if(exam.listQuestion[presentQuestion].selected == indexPath.row){
            cell.layer.backgroundColor = UIColor.orange.cgColor
        }
        
        if (exam.listQuestion[presentQuestion].selected == -1){
            cell.layer.backgroundColor = UIColor.white.cgColor
        }
        else if(exam.listQuestion[presentQuestion].selected == indexPath.row){
            cell.layer.backgroundColor = UIColor.orange.cgColor
        }
        
        cell.parentDelegate = self
        
        
        return cell
    }
    
    
    @IBAction func previousClick(_ sender: Any) {
        if (presentQuestion > 0){
            presentQuestion -= 1
            print(presentQuestion)
            for count in 0..<4{
                let indexPath = IndexPath(row: count, section: 0)
                let cell = listAnserView.cellForRow(at: indexPath) as! QuestionTableViewCell
                
                if (indexPath.row == 0){
                    cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionA
                    //cell.layer.backgroundColor = UIColor.black.cgColor
                       print(exam.listQuestion[presentQuestion].textQ?.optionA)
                }
                else if (indexPath.row == 1){
                    cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionB
                }
                else if (indexPath.row == 2){
                    cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionC
                }
                else if (indexPath.row == 3){
                    cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionD
                }
                

                if (exam.listQuestion[presentQuestion].selected == -1){
                    cell.layer.backgroundColor = UIColor.white.cgColor
                }
                else if(exam.listQuestion[presentQuestion].selected == indexPath.row){
                    cell.layer.backgroundColor = UIColor.orange.cgColor
                }
                else{
                     cell.layer.backgroundColor = UIColor.white.cgColor
                }
            }
        }
        
    }
    
    
    @IBAction func nextClick(_ sender: Any) {
        if (presentQuestion < exam.amountQuestion - 1){
            presentQuestion += 1
            print(presentQuestion)
            for count in 0..<4{
                let indexPath = IndexPath(row: count, section: 0)
                let cell = listAnserView.cellForRow(at: indexPath) as! QuestionTableViewCell
                
                if (indexPath.row == 0){
                    cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionA
                    //cell.layer.backgroundColor = UIColor.black.cgColor
                       print(exam.listQuestion[presentQuestion].textQ?.optionA)
                }
                else if (indexPath.row == 1){
                    cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionB
                }
                else if (indexPath.row == 2){
                    cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionC
                }
                else if (indexPath.row == 3){
                    cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionD
                }
                

                if (isfinshed == false){
                    if (exam.listQuestion[presentQuestion].selected == -1){
                        cell.layer.backgroundColor = UIColor.white.cgColor
                    }
                    else if(exam.listQuestion[presentQuestion].selected == indexPath.row){
                        cell.layer.backgroundColor = UIColor.orange.cgColor
                    }else{
                         cell.layer.backgroundColor = UIColor.white.cgColor
                    }
                }else{
                    if (count == exam.listQuestion[presentQuestion].correctAswer){
                        
                        cell.backgroundColor = UIColor.green
                    }
                    else{
                        if (count == exam.listQuestion[presentQuestion].selected){
                            if (exam.listQuestion[presentQuestion].correctAswer != exam.listQuestion[presentQuestion].selected){
                                cell.backgroundColor = UIColor.red
                            }
                        }
                        else{
                            cell.backgroundColor = UIColor.white
                        }
                        
                    }
                }
            }
        }
        
        
    //listAnserView.reloadData()
    }
    
    @IBAction func difficultBtn_Click(_ sender: Any) {
        print(exam.listQuestion[1].textQ?.optionA)

    }
    
    @IBAction func finishBtn_Click(_ sender: Any) {
        if (isfinshed == false){
            isfinshed = true
            for count in 0..<4{
                let indexPath = IndexPath(row: count, section: 0)
                let cell = listAnserView.cellForRow(at: indexPath) as! QuestionTableViewCell
                if (count == exam.listQuestion[presentQuestion].correctAswer){
                    
                    cell.backgroundColor = UIColor.green
                }
                else{
                    if (count == exam.listQuestion[presentQuestion].selected){
                        if (exam.listQuestion[presentQuestion].correctAswer != exam.listQuestion[presentQuestion].selected){
                            cell.backgroundColor = UIColor.red
                        }
                    }
                    else{
                        cell.backgroundColor = UIColor.white
                    }
                    
                }
                if (indexPath.row == 0){
                    cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionA
                    //cell.layer.backgroundColor = UIColor.black.cgColor
                       print(exam.listQuestion[presentQuestion].textQ?.optionA)
                }
                else if (indexPath.row == 1){
                    cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionB
                }
                else if (indexPath.row == 2){
                    cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionC
                }
                else if (indexPath.row == 3){
                    cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionD
                }
            }

            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (isfinshed == false){
            exam.listQuestion[presentQuestion].selected = indexPath.row
             for count in 0..<4{
                 let indexCount = IndexPath(row: count, section: 0)
                 let cell = listAnserView.cellForRow(at: indexCount) as! QuestionTableViewCell
                 if (count == indexPath.row){
                     cell.backgroundColor = UIColor.orange
                 }
                 else{
                     cell.backgroundColor = UIColor.white
                 }
                 if (indexPath.row == 0){
                     cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionA
                     //cell.layer.backgroundColor = UIColor.black.cgColor
                        print(exam.listQuestion[presentQuestion].textQ?.optionA)
                 }
                 else if (indexPath.row == 1){
                     cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionB
                 }
                 else if (indexPath.row == 2){
                     cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionC
                 }
                 else if (indexPath.row == 3){
                     cell.answerTxt.text = exam.listQuestion[presentQuestion].textQ?.optionD
                 }
             }
            listAnserView.reloadData()

        }
        else{
            
        }

        
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

extension ListQuestionViewController: ParentControllerDelegate{
func requestReloadTable() {
    self.listAnserView.reloadData()
}
}
