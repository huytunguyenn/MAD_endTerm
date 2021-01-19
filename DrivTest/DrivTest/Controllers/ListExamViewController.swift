//
//  ListExamViewController.swift
//  DrivTest
//
//  Created by Dương Long on 1/18/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import UIKit

class ListExamViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = listExamView.dequeueReusableCell(withReuseIdentifier: "ExamCollectionViewCell", for: indexPath) as! ExamCollectionViewCell
        
        
        return cell
        
        
    }
    
    
    var typeExam: Int = 0
    
    @IBOutlet var listExamView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listExamView.dataSource = self
        listExamView.delegate = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
