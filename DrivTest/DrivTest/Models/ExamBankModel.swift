//
//  ExamBankModel.swift
//  DrivTest
//
//  Created by Dương Long on 1/20/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import Foundation

class Bank_ExamA1 {
    var listExam = [ExamA1]()
    init(){
        var temp = ExamA1(listNumericalQuestion: [(subType: 0, number: 2),
                                                  (subType: 3, number: 1),
                                                    (subType: 0, number: 2),
                                                     (subType: 1, number: 5),
                                                     (subType: 3, number: 4),
                                                      (subType: 4, number: 3),
                                                       (subType: 1, number: 4),
                                                        (subType: 2, number: 1),
                                                         (subType: 4, number: 1),
                                                          (subType: 1, number: 5),
                                                           (subType: 4, number: 0),
                                                            (subType: 2, number: 0),
                                                             (subType: 1, number: 0),
                                                              (subType: 1, number: 2),
                                                               (subType: 1, number: 4),
                                                                (subType: 0, number: 5),
                                                                 (subType: 0, number: 6),
                                                                  (subType: 2, number: 3),
                                                                   (subType: 4, number: 3),
                                                                    (subType: 4, number: 2),
                                                                     (subType: 1, number: 6),
                                                                      (subType: 2, number: 6),
                                                                       (subType: 3, number: 5),
                                                                        (subType: 2, number: 5),
                                                                         (subType: 1, number: 1)],num_Exem: 1)
        listExam.append(temp)
    }
    
}
