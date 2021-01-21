//
//  ChooseQuizViewController.swift
//  DrivTest
//
//  Created by HUYTU on 1/21/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class ChooseQuizViewController: UIViewController {
    
    weak var delegate: delegateProtocol? = nil
    
    var correctArr = [String]()
    
    @IBOutlet weak var chooseCollectionView: UICollectionView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        chooseCollectionView.dataSource = self
        chooseCollectionView.delegate = self
        
    }
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
      dismiss(animated: true, completion: nil)
    }
    
    
}


// for UICollectionView
extension ChooseQuizViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return correctArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "chooseQuizCollectionViewCell", for: indexPath) as! chooseQuizCollectionViewCell
        cell.questionNumLabel.text = String(indexPath.row + 1)
        cell.bg.image = UIImage(named: correctArr[indexPath.row])

        return cell
    }
    
    // click on category image
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.Method(backnum: indexPath.row)
        dismiss(animated: true, completion: nil)

    }
    
    
}
