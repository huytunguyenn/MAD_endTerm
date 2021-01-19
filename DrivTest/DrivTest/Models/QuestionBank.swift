//
//  QuestionBank.swift
//  DrivTest
//
//  Created by HUYTU on 1/19/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import Foundation


class QuestionBank {
    var list = [Question]()
    
    init(){
        list.append(Question(questionText: "cau1: Toi ten gi, 4", choiceA: "NGUYEN hUY RTU", choiceB: "HUY TU", choiceC: "HUYTUS", choiceD: "Nguyen Huy Tu", answer: 4))
        list.append(Question(questionText: "cau2: Toi ten giss, 1", choiceA: "NGUYEN hUY RTU", choiceB: "HUY TU", choiceC: "HUYTUS", choiceD: "Nguyen Huy Tu", answer: 1))
        list.append(Question(questionText: "cau3: Toi ten giaaa, 3", choiceA: "NGUYEN hUY RTU", choiceB: "HUY TU", choiceC: "HUYTUS", choiceD: "Nguyen Huy Tu", answer: 3))
        list.append(Question(questionText: "cau4: ten gi, 2", choiceA: "NGUYEN hUY RTU", choiceB: "HUY TU", choiceC: "HUYTUS", choiceD: "Nguyen Huy Tu", answer: 2))
        
        
        
        
    }
}
