
import Foundation

struct Exam : Codable{
    var name: String
    var questions: [Question1]
    init(name:String, questions: [Question1]) {
        self.name = name
        self.questions = questions
    }
}
