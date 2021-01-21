//
//  AlertViewController.swift
//  DrivTest
//
//  Created by Dương Long on 1/21/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import Foundation
import UIKit
class AlertView: UIView{
    static let instance = AlertView()
    
    @IBOutlet var parentView: UIView!
    
    @IBOutlet var alertView: UIView!
    
    @IBOutlet var imgView: UIImageView!
    
    @IBOutlet var resultTxt: UILabel!
    @IBOutlet var correctTxt: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("AlertView", owner: self, options: nil)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit(){
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
        parentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    func showAlert (typeAlert: String, correctAnswer: Int){
        if (typeAlert == "pass"){
            self.imgView.image = UIImage.init(named: "happyIcon")
            self.resultTxt.text = "Gút Chóp Bạn"
        }else{
            self.imgView.image = UIImage.init(named: "sadIcon")
            self.resultTxt.text = "Gòy Xong !!"
        }
        self.correctTxt.text = "Số câu đúng: " + String(correctAnswer)

        UIApplication.shared.keyWindow?.addSubview(parentView)
    }
    
    @IBAction func backAction(_ sender: Any) {
        parentView.removeFromSuperview()
    }
    
}
