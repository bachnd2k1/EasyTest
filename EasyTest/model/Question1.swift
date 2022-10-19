
import Foundation

struct Question1 : Codable{
    var question: String
    var answers: [String]
    var correct: Int
    var collapsed: Bool
    
    init(question: String, answers: [String], correct:Int,collapsed: Bool = false) {
        self.question = question
        self.answers = answers
        self.correct = correct
        self.collapsed = collapsed
  }
}
