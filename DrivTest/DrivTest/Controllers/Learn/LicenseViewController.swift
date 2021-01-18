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
    
    var type: Int = -1; // license type (A1,A2,..)
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var titleLabelImageView: UIImageView!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    // images for license title
    var listTitleData = [
        titleData(_imageName: "title_a1"),
        titleData(_imageName: "title_a2"),
        titleData(_imageName: "title_b1"),
        titleData(_imageName: "title_b2"),
        titleData(_imageName: "title_c"),
        titleData(_imageName: "title_f")
    ]
    // images for category image
     var listCatImgData = [
         titleData(_imageName: "pic_chdl"),
         titleData(_imageName: "pic_knqt"),
         titleData(_imageName: "pic_htbb"),
         titleData(_imageName: "pic_vhdd"),
         titleData(_imageName: "pic_chsh")
     ]
    // images for category title image
       var listTitleCatData = [
        titleData(_imageName: "label_chdl"),
        titleData(_imageName: "label_knqt"),
        titleData(_imageName: "label_htbb"),
        titleData(_imageName: "label_vhdd"),
        titleData(_imageName: "label_chsh")
       ]
    // layout for collection view
    var layout = UICollectionViewLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // show title of license
        titleLabelImageView.image = UIImage(named: listTitleData[type].imageName)
        // set up for category view
        categoryCollectionView.dataSource = self
        categoryCollectionView.delegate = self
        if let layout = categoryCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
        }
        categoryCollectionView.showsVerticalScrollIndicator = false
        
    }
    
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

// for UICollectionView
extension LicenseViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listCatImgData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "licenseCollectionViewCell", for: indexPath) as! licenseCollectionViewCell
        
        cell.catagoryImageView.contentMode = .scaleAspectFill
        cell.catagoryImageView.clipsToBounds = true
        cell.catagoryImageView.layer.cornerRadius = 15
        cell.catagoryImageView.image = UIImage(named: listCatImgData[indexPath.row].imageName)
        
        cell.titleImageView.image = UIImage(named: listTitleCatData[indexPath.row].imageName)
        
        

        cell.layer.cornerRadius = 12
        return cell
    }
    // click on category image
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let dest = storyboard?.instantiateViewController(identifier: "LicenseViewController") as! LicenseViewController
//        dest.type = indexPath.row;
//        dest.modalPresentationStyle = .fullScreen
//        self.present(dest, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height/3.5)
    }
    
    
    
}
