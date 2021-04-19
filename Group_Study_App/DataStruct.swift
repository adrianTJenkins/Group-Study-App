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

let someUser = User(name: "Shaylah", classes: [csc151, csc152, csc251])

// Classes
let csc151 = Class(name: "Computer Programming I", quizzes: [quiz151A, quiz151B] )
let csc152 = Class(name: "Computer Programming II", quizzes: [quiz152A, quiz152B])
let csc251 = Class(name: "Data Structures", quizzes: [quiz251A, quiz251B])

// Quizzes
let quiz151A = Quiz(name: "General Knowledge", questions: [question1_151A, question2_151A, question3_151A], scores: ["Name": 10])
let quiz151B = Quiz(name: "Arrays", questions: [question1_151B, question2_151B, question3_151B], scores: ["Name": 10])

let quiz152A = Quiz(name: "152 First Quiz", questions: [question1_152A, question2_152A, question3_152A], scores: ["Name": 10])
let quiz152B = Quiz(name: "152 Second Quiz", questions: [question1_152B, question2_152B, question3_152B], scores: ["Name": 10])

let quiz251A = Quiz(name: "205 First Quiz", questions: [question1_251A, question2_251A, question3_251A], scores: ["Name": 10])
let quiz251B = Quiz(name: "205 Second Quiz", questions: [question1_251B, question2_251B, question3_251B], scores: ["Name": 10])

// Quiz Questions
let question1_151A = Question(text: "What is encapsulation?", answers: ["The bundling of data, along with the methods that operate on that data, into a single unit.", "The method to explaining an algorithm's time complexity.", "An object-oriented programming language.", "A syntax rule followed in Java programs"], correctAnswer: "The bundling of data, along with the methods that operate on that data, into a single unit.")
let question2_151A = Question(text: "What is the value of b at the end of this program? var a = 5; var b = a++", answers: ["7", "5", "6", "error"], correctAnswer: "5")
let question3_151A = Question(text: "What is an object?", answers: ["A property of a class", "A function of a class", "An instance of a class", "All of the above"], correctAnswer: "An instance of a class" )

let question1_152A = Question(text: "What is the time complexity of the following? for i in n: print(i)", answers: ["O(1)", "O(N^2)", "O(N)", "O(N^3)"], correctAnswer: "O(N)" )
let question2_152A = Question(text: "What is the Java keyword to allow a class to inherit another class?", answers: ["inherits", "from", "import", "extends"], correctAnswer: "extends")
let question3_152A = Question(text: "What programming methodology is used to allow a program to handle errors?", answers: ["Debugging", "Error Handling","Exception Handling", "Syntax Analyzing"], correctAnswer:"Exception Handling" )

let question1_251A = Question(text: "Which data structure is best for maintaining the order of elements of data?", answers: ["Queue", "Tree", "Stack", "Graph"], correctAnswer: "Stack" )
let question2_251A = Question(text: "Which data structure has a fixed length?", answers: ["Tree", "LinkedList", "Stack", "Array"], correctAnswer: "Array" )
let question3_251A = Question(text: "Which tree traversal would target tree roots first?", answers: ["Preorder", "Postorder", "InOrder", "None of the above"], correctAnswer: "Preorder")
