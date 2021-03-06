//
//  ExamModel.swift
//  DrivTest
//
//  Created by Dương Long on 1/20/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import Foundation

struct ExamQuestion{
    var textQ: Question? = nil
    var imageQ: ImageQuestion? = nil
    var isParalysis: Bool = false
    var isImage: Bool = false
    var selected: Int = -1
    var correctAswer: Int = -2
    var question: String = ""
    var amountQ: Int = 0
    
}


class ExamA1{
    let time: Int = 600
    var numExam: Int = 0
    var amountQuestion: Int = 0
    var listQuestion = [ExamQuestion]()
    init (listNumericalQuestion: [(subType: Int, number: Int)], typeExam: Int){
        let list_question_diemliet = QuestionBank(type: typeExam,subtype: 0).list
        let list_question_khainiem = QuestionBank(type: typeExam, subtype: 1).list
      //  let list_question_bienbao = QuestionBank(type: typeExam, subtype: 2).list
        let list_question_giaoduc = QuestionBank(type: typeExam, subtype: 3).list
     //   let list_question_sahinh = QuestionBank(type: typeExam, subtype: 4).list
        for num in listNumericalQuestion{
            var temp = ExamQuestion()
            if (num.subType == 0 ){
                temp.isParalysis =  true
                let tempQ = list_question_diemliet[num.number]
                //  print(num.number)
                temp.textQ = tempQ
                temp.correctAswer = tempQ.correctAnswer
                temp.question = tempQ.question
            }
            else if (num.subType == 1){
                let tempQ = list_question_khainiem[num.number]
                temp.textQ = tempQ
                //   print(num.number)
                temp.correctAswer = tempQ.correctAnswer
                temp.question = tempQ.question
                
                
            }
            else if (num.subType == 2){
                temp.isImage = true
                //   let tempQ = list_question_bienbao[num.number]
                //temp.imageQ = tempQ
                
            }
            else if (num.subType == 3){
                let tempQ = list_question_giaoduc[num.number]
                temp.textQ = tempQ
                // print(num.number)
                temp.correctAswer = tempQ.correctAnswer
                temp.question = tempQ.question
                
            }
            else if (num.subType == 4){
                temp.isImage = true
                // let tempQ = list_question_sahinh[num.number]
                //temp.imageQ = tempQ
            }
            if (num.subType != 2 && num.subType != 4){
                listQuestion.append(temp)
            }
        }
        amountQuestion = listQuestion.count
        numExam = typeExam
    }
    init(){
        
    }
    
    
}
