//
//  DataStruct.swift
//  Group_Study_App
//
//  Created by Adrian Jenkins on 4/19/21.
//
import FirebaseDatabase
import Foundation

let database = Database.database().reference()

struct User {
    var name: String
    var classes: [Class]
}

struct Class {
    var courseID: String
    var name: String
}

struct Quiz {
    var quizID: String
    var name: String
    var course: String
}

struct Question {
    var text: String
    var answers: [String]
    var correctAnswer: String
    var quiz: String
}

var students = ["Kayla", "Dylan", "Shaylah", "Adrian", "Donnell", "Leslie", "Stephen"]

var user: User = User(name: "Joe", classes: userClasses);
//user = User(name: students[Int.random(in: 0..<students.count)], classes: userClasses)
var currentCourse: String = ""
var currentCourseID: String = ""
var currentQuiz: String = ""
var currentQuizID: String = ""
var currentQuestion: String = ""
var currentQuestionID: String = ""
var currentScores: [String: Int] = [:]


// Classes
var userClasses: [Class] = [
    Class(courseID: "CSC 151", name: "Computer Programming I"),
    Class(courseID: "CSC 152", name: "Computer Programming II"),
    Class(courseID: "CSC 251", name: "Data Structures I")
]

// Quizzes
var quizzes: [Quiz] = [
    Quiz(quizID: "151A", name: "General Knowledge", course: "CSC 151"),
    Quiz(quizID: "152A", name: "General Knowledge", course: "CSC 152"),
    Quiz(quizID: "251A", name: "General Knowledge", course: "CSC 251")
]

// Quiz Questions
var questions: [Question] = [
    Question(text: "What is encapsulation?", answers: ["The bundling of data, along with the methods that operate on that data, into a single unit.", "The method to explaining an algorithm's time complexity.", "An object-oriented programming language.", "A syntax rule followed in Java programs"], correctAnswer: "The bundling of data, along with the methods that operate on that data, into a single unit.", quiz: "151A"),
    Question(text: "What is the value of b at the end of this program? var a = 5; var b = a++", answers: ["7", "5", "6", "error"], correctAnswer: "5", quiz: "151A"),
    Question(text: "What is an object?", answers: ["A property of a class", "A function of a class", "An instance of a class", "All of the above"], correctAnswer: "An instance of a class", quiz: "151A"),
    Question(text: "What is the time complexity of the following? for i in n: print(i)", answers: ["O(1)", "O(N^2)", "O(N)", "O(N^3)"], correctAnswer: "O(N)", quiz: "152A"),
    Question(text: "What is the Java keyword to allow a class to inherit another class?", answers: ["inherits", "from", "import", "extends"], correctAnswer: "extends", quiz: "152A"),
    Question(text: "What programming methodology is used to allow a program to handle errors?", answers: ["Debugging", "Error Handling","Exception Handling", "Syntax Analyzing"], correctAnswer: "Exception Handling", quiz: "152A"),
    Question(text: "Which data structure is best for maintaining the order of elements of data?", answers: ["Queue", "Tree", "Stack", "Graph"], correctAnswer: "Stack", quiz: "251A"),
    Question(text: "Which data structure has a fixed length?", answers: ["Tree", "LinkedList", "Stack", "Array"], correctAnswer: "Array", quiz: "251A"),
    Question(text: "Which tree traversal would target tree roots first?", answers: ["Preorder", "Postorder", "InOrder", "None of the above"], correctAnswer: "Preorder", quiz: "251A")
    
]
