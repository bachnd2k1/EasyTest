

import UIKit

class EditExamViewController: UIViewController {

    let mainTableView = MainUITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit Exam"
        self.navigationItem.rightBarButtonItems = [
        UIBarButtonItem(barButtonSystemItem:.done, target: self, action: #selector(btnSaveExam)),
        UIBarButtonItem(barButtonSystemItem:.add, target: self, action: #selector(btnAddQuestion))
        ]
        self.view.addSubview(mainTableView)
        mainTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        mainTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        mainTableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        mainTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    @objc func btnAddQuestion() {
        let v = AddQuestionViewController()
        v.delegate = self
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    @objc func btnSaveExam() {
        if (!mainTableView.questions.isEmpty) {
            let exam = Exam(name:"testQR",questions: mainTableView.questions)
            let v = QRViewController()

            do {
                let jsonEncoder = JSONEncoder()
                let jsonData = try jsonEncoder.encode(exam)
                v.jsonQr = String(data: jsonData, encoding: String.Encoding.utf8) ?? ""
                print(String(data: jsonData, encoding: String.Encoding.utf16) ?? "abc")
            } catch {
                print(error)
            }
            self.navigationController?.pushViewController(v, animated: true)
        }
       
    }
    
    func updatedTableView(question: Question1) {
        mainTableView.questions.append(question)
        mainTableView.reloadData()
    }
}



