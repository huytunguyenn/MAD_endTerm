//
//  LicenseViewController.swift
//  DrivTest
//
//  Created by HUYTU on 12/18/20.
//  Copyright © 2020 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class titleData {
    var imageName:String = ""
    
    init(_imageName:String){
        self.imageName = _imageName
    }
}

class LicenseViewController: UIViewController {
    
    var type: Int = -1; // license type
    @IBOutlet weak var backButton: UIButton!

    @IBOutlet weak var titleLabelImageView: UIImageView!
    
    
    // images for title
    var listTitleData = [
        titleData(_imageName: "title_a1"),
        titleData(_imageName: "title_a2"),
        titleData(_imageName: "title_b1"),
        titleData(_imageName: "title_b2"),
        titleData(_imageName: "title_c"),
        titleData(_imageName: "title_f")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabelImageView.image = UIImage(named: listTitleData[type].imageName)

       
    }
    

    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
