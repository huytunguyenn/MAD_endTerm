//
//  MainExamViewController.swift
//  DrivTest
//
//  Created by Dương Long on 1/18/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class MainExamViewController: UIViewController {

    @IBOutlet var A2_Btn: UIButton!
    
    @IBOutlet var A1_Btn: UIButton!
    
    @IBOutlet var B1_Btn: UIButton!
    
    @IBOutlet var B2_Btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func A1_Btn_Click(_ sender: Any) {
        var sb = UIStoryboard(name: "Exam", bundle: nil)
        
        var screen = sb.instantiateViewController(identifier: "ListExamViewController") as! ListExamViewController
        
        screen.typeExam = 1
        
        self.navigationController?.pushViewController(screen, animated: true)
    }
    
    
    @IBAction func A2_Btn_Click(_ sender: Any) {
    }
    
    @IBAction func B1_Btn_Click(_ sender: Any) {
    }
    
    @IBAction func B2_Btn_Click(_ sender: Any) {
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
