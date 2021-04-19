//
//  DataStruct.swift
//  Group_Study_App
//
//  Created by Adrian Jenkins on 4/19/21.
//

import Foundation

struct User {
    var name: String
    var classes: [Class]
}

struct Class {
    var name: String
    var quizzes: [Quiz]
}

struct Quiz {
    var name: String
    var questions: [Question]
    var scores: [String: Int]
}

struct Question {
    var text: String
    var answers: [String]
    var correctAnswer: String
}
