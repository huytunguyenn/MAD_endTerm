//
//  ExamCollectionViewCell.swift
//  DrivTest
//
//  Created by Dương Long on 1/18/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class ExamCollectionViewCell: UICollectionViewCell {
    var numTest: Int = -1
    var type_Exam: Int = -1
    weak var parentViewController: ListExamViewController?
    @IBOutlet var numQuestionTxt: UILabel!
    @IBOutlet var timeTxt: UILabel!
    @IBOutlet var startBtn: UIButton!
    
    @IBOutlet var numericTxt: UILabel!
    
    @IBAction func startBtn_Click(_ sender: Any) {
        let sb = UIStoryboard(name: "Exam", bundle: nil)
        let screen = sb.instantiateViewController(identifier: "ListQuestionFinalViewController") as ListQuestionFinalViewController
        screen.numTest = self.numTest
        screen.typeTest = self.type_Exam
        
        parentViewController?.navigationController?.pushViewController(screen, animated: true)
    }
    
}
