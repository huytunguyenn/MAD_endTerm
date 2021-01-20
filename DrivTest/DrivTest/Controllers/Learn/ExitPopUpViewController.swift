//
//  ExitPopUpViewController.swift
//  DrivTest
//
//  Created by HUYTU on 1/21/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class ExitPopUpViewController: UIViewController {
    
    // for Back button
    var type: Int = -1; // license type (A1,A2,B1,B2,C,F)
    
    
    //outlets
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var okButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // back to license VC
    @IBAction func okButtonTapped(_ sender: Any) {
        let dest = storyboard?.instantiateViewController(identifier: "LicenseViewController") as! LicenseViewController
        dest.type = type
        // back trasistion (from top to bottom)
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromBottom
        view.window!.layer.add(transition, forKey: kCATransition)
        dest.modalPresentationStyle = .fullScreen
        self.present(dest, animated: true, completion: nil)
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
