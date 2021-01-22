//
//  ExamBankModel.swift
//  DrivTest
//
//  Created by Dương Long on 1/20/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import Foundation

class Bank_ExamA1 {
    private var listExam1 = [ExamA1]()
    var amount: Int = 0

    
    init(typeExam: Int){
        
        //A1 Exam
        var temp = ExamA1(listNumericalQuestion: [(subType: 0, number: 2),
                                                  (subType: 3, number: 1),
                                                  (subType: 0, number: 2),
                                                  (subType: 0, number: 2),
                                                  (subType: 1, number: 4),
                                                  (subType: 1, number: 5),
                                                  (subType: 1, number: 0),
                                                  (subType: 1, number: 4),
                                                  (subType: 0, number: 3),
                                                  (subType: 3, number: 5),
                                                  (subType: 1, number: 1)],typeExam: typeExam)
        listExam1.append(temp)
        
        temp = ExamA1(listNumericalQuestion: [(subType: 0, number: 2),
                                              (subType: 1, number: 0),
                                              (subType: 1, number: 4),
                                              (subType: 0, number: 3),
                                              (subType: 3, number: 5),
                                              (subType: 3, number: 1),
                                              (subType: 0, number: 2),
                                              (subType: 0, number: 2),
                                              (subType: 1, number: 4),
                                              (subType: 1, number: 5),
                                              (subType: 1, number: 1)],typeExam: typeExam)
        listExam1.append(temp)
        
        temp = ExamA1(listNumericalQuestion: [(subType: 1, number: 0),
                                              (subType: 1, number: 4),
                                              (subType: 0, number: 3),
                                              (subType: 3, number: 5),
                                              (subType: 0, number: 2),
                                              (subType: 3, number: 1),
                                              (subType: 0, number: 2),
                                              (subType: 0, number: 2),
                                              (subType: 1, number: 4),
                                              (subType: 1, number: 5),
                                              (subType: 1, number: 1)],typeExam: typeExam)
        listExam1.append(temp)
        amount = listExam1.count
        
        
    }
    
    init(){
        
    }
    
    func getExam(numberExam: Int) -> ExamA1{
        return listExam1[numberExam]
    }
    
    func getList () -> [ExamA1]{
        return listExam1
    }
    
}
