//
//  LicenseViewController.swift
//  DrivTest
//
//  Created by HUYTU on 12/18/20.
//  Copyright © 2020 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class LicenseViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
