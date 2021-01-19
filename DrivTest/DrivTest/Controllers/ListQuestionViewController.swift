//
//  ListQuestionViewController.swift
//  DrivTest
//
//  Created by Dương Long on 1/18/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class ListQuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listAnserView.dequeueReusableCell(withIdentifier: "QuestionTableViewCell") as! QuestionTableViewCell
        
        cell.circleTxt()
        return cell
    }
    
    var numTest: Int = 0
    @IBOutlet var finishBtn: UIButton!
    
    @IBOutlet var questionTxt: UILabel!
    @IBOutlet var imageQuestion: UIImageView!
    
    
    @IBOutlet var difficultQuestionBtn: UIButton!
    
    @IBOutlet var listAnserView: UITableView!
    
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
    
    @IBAction func previousClick(_ sender: Any) {
    }
    
    
    @IBAction func nextClick(_ sender: Any) {
    }
    
    @IBAction func difficultBtn_Click(_ sender: Any) {
    }
    
    @IBAction func finishBtn_Click(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        for count in 0..<4{
            let indexCount = IndexPath(row: count, section: 0)
            let cell = listAnserView.cellForRow(at: indexCount) as! QuestionTableViewCell
            if (count == indexPath.row){
                cell.backgroundColor = UIColor.orange
            }
            else{
                cell.backgroundColor = UIColor.white
            }
        }
        listAnserView.reloadData()
        
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
