//
//  QuestionsUtils.swift
//  MyQuestionBot
//
//  Created by iOS Lab on 06/04/24.
//

import Foundation

func updateAnswer(question: String) -> String {
    var answer: String = ""
    
    switch question{
        case "What's my name?":
            answer = "My name is Victor."
        case "What's my age?":
            answer = "My age is 27."
        case "What day is today?":
            answer = "Today is April 6th."
        default:
            answer = "Didn't understand your question."
    }
    
    return answer
}
