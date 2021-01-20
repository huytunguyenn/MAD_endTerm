//
//  VideoViewController.swift
//  DrivTest
//
//  Created by HUYTU on 12/18/20.
//  Copyright © 2020 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var catagoryCollectionView: UICollectionView!
   
    // images for collection view
    var listCatData = [
        catData(_imageName: "pic_a1"),
        catData(_imageName: "pic_a2"),
        catData(_imageName: "pic_b1"),
        catData(_imageName: "pic_b2"),
        catData(_imageName: "pic_c"),
        catData(_imageName: "pic_f")
    ]
    // layout for collection view
    var layout = UICollectionViewLayout()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // set up for catagory view
        catagoryCollectionView.dataSource = self
        catagoryCollectionView.delegate = self
        if let layout = catagoryCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        catagoryCollectionView.showsHorizontalScrollIndicator = false
    }
    

   
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

// for UICollectionView
extension VideoViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listCatData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "catagoryCollectionViewCell", for: indexPath) as! catagoryCollectionViewCell
        
        cell.bg.contentMode = .scaleAspectFill
        cell.bg.clipsToBounds = true
        cell.bg.layer.cornerRadius = 12
        cell.bg.image = UIImage(named: listCatData[indexPath.row].imageName)
        cell.layer.cornerRadius = 12
        return cell
    }
    // click on license image
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dest = storyboard?.instantiateViewController(identifier: "WatchingViewController") as! WatchingViewController
        dest.type = indexPath.row; // license type (A1,A2,B1,B2,C,F)
        dest.modalPresentationStyle = .fullScreen
        self.present(dest, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.height)
    }
    
    
    
}
