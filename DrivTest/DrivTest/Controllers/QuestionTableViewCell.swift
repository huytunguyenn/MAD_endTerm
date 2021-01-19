//
//  QuestionTableViewCell.swift
//  DrivTest
//
//  Created by Dương Long on 1/18/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    @IBOutlet var numAnswerTxt: UILabel!
    
    @IBOutlet var answerTxt: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        // Configure the view for the selected state
    }
    
    func circleTxt (){
        numAnswerTxt.layer.cornerRadius = numAnswerTxt.frame.width/2
        numAnswerTxt.layer.borderWidth = 1
        numAnswerTxt.layer.borderColor = UIColor.black.cgColor
        numAnswerTxt.backgroundColor = UIColor.white
    }

}
