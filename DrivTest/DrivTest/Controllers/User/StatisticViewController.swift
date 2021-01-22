//
//  StatisticViewController.swift
//  DrivTest
//
//  Created by Minh Tri on 1/21/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class record{
    var rank: String
    var highestScore: Int
    var NTest: Int
    var passRate: Int
    init(_rank: String, _highestScore: Int, _NTest: Int, _passRate: Int){
        rank = _rank
        highestScore = _highestScore
        NTest = _NTest
        passRate = _passRate
    }
}

class StatisticViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var rankButton: UIButton!
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    @IBOutlet weak var nTestLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    
    let rank = ["A1","A2","B1","B2","C","F"]
    
    var listRecord = [record(_rank: "A1", _highestScore: 1, _NTest: 1, _passRate: 1),
                      record(_rank: "A2", _highestScore: 2, _NTest: 2, _passRate: 2),
                      record(_rank: "B1", _highestScore: 3, _NTest: 3, _passRate: 3),
                      record(_rank: "B2", _highestScore: 4, _NTest: 4, _passRate: 4),
                      record(_rank: "C", _highestScore: 5, _NTest: 5, _passRate: 5),
                      record(_rank: "F", _highestScore: 6, _NTest: 6, _passRate: 6)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pickerView.isHidden = true
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    @IBAction func tapRank(_ sender: Any) {
        if pickerView.isHidden{
            pickerView.isHidden = false
            pickerView.resignFirstResponder()
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return rank.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return rank[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        rankButton.setTitle(rank[row], for: .normal)
        for temp in listRecord{
            if temp.rank == rank[row]{
                nTestLabel.text = String(temp.NTest)
                highScoreLabel.text = String(temp.highestScore)
                rateLabel.text = String(temp.passRate)
                break
            }
        }
        pickerView.isHidden = true
    }
}
