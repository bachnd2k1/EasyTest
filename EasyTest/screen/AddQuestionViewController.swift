     
import UIKit


class AddQuestionViewController: UIViewController {

    weak var delegate: EditExamViewController!
    var btn1: UIButton!
    var btn2: UIButton!
    var btn3: UIButton!
    var btn4: UIButton!
    var position = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Create Exam"
        setupViews()
        prepareForReuse()
    }
    
    func prepareForReuse() {
        btn1.backgroundColor = UIColor.red
        btn2.backgroundColor = UIColor.white
        btn3.backgroundColor = UIColor.white
        btn4.backgroundColor = UIColor.white
        btn1.setTitleColor(UIColor.white, for: .normal)
    }
    
    func setupViews() {
        self.view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 80).isActive=true
        lblTitle.rightAnchor.constraint(equalTo: self.view.centerXAnchor,constant: 5).isActive=true
        lblTitle.widthAnchor.constraint(equalToConstant: 250).isActive=true
        lblTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true
        
        self.view.addSubview(edtQuestion)
        self.view.addSubview(lblTitleAnswer)
        NSLayoutConstraint.activate(
            [lblTitleAnswer.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: 30), lblTitleAnswer.rightAnchor.constraint(equalTo: self.view.centerXAnchor,constant:0), lblTitleAnswer.widthAnchor.constraint(equalToConstant: 250), lblTitleAnswer.heightAnchor.constraint(equalToConstant: 80)
            ]
        )
        
//        lblTitleAnswer.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200).isActive=true
//        lblTitleAnswer.rightAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
//        lblTitleAnswer.widthAnchor.constraint(equalToConstant: 250).isActive=true
//        lblTitleAnswer.heightAnchor.constraint(equalToConstant: 80).isActive=true
        
        
        self.view.addSubview(edtAnswer1)
        self.view.addSubview(edtAnswer2)
        self.view.addSubview(edtAnswer3)
        self.view.addSubview(edtAnswer4)
        
        
        self.view.addSubview(lblAnswer)
        NSLayoutConstraint.activate(
            [lblAnswer.topAnchor.constraint(equalTo: edtAnswer4.bottomAnchor, constant: 10), lblAnswer.rightAnchor.constraint(equalTo: self.view.centerXAnchor,constant:-80), lblAnswer.widthAnchor.constraint(equalToConstant: 150), lblAnswer.heightAnchor.constraint(equalToConstant: 80)
            ]
        )
//        lblAnswer.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 530).isActive=true
//        lblAnswer.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive=true
//        lblAnswer.widthAnchor.constraint(equalToConstant: 120).isActive=true
//        lblAnswer.heightAnchor.constraint(equalToConstant: 80).isActive=true
        
        
        self.view.addSubview(btnSave)
        btnSave.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 630).isActive=true
        btnSave.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive=true
        btnSave.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        btnSave.widthAnchor.constraint(equalToConstant: 110).isActive=true
        btnSave.heightAnchor.constraint(equalToConstant: 50).isActive=true
        
        
        let btnWidth: CGFloat = 65
        let btnHeight: CGFloat = 40
        btn1 = getButton(tag: 0)
        view.addSubview(btn1)
        btn1.setTitle("1st", for: .normal)
        NSLayoutConstraint.activate(
            [btn1.topAnchor.constraint(equalTo: edtAnswer4.bottomAnchor, constant: 30), btn1.rightAnchor.constraint(equalTo: self.view.centerXAnchor,constant: -45), btn1.widthAnchor.constraint(equalToConstant: btnWidth), btn1.heightAnchor.constraint(equalToConstant: btnHeight)
            ]
        )
        btn1.addTarget(self, action: #selector(btnActionOne), for: .touchUpInside)
        
        
        btn2 = getButton(tag: 1)
        view.addSubview(btn2)
        btn2.setTitle("2nd", for: .normal)
        NSLayoutConstraint.activate(
            [btn2.topAnchor.constraint(equalTo: edtAnswer4.bottomAnchor, constant: 30), btn2.rightAnchor.constraint(equalTo: self.view.centerXAnchor,constant: 30), btn2.widthAnchor.constraint(equalToConstant: btnWidth), btn2.heightAnchor.constraint(equalToConstant: btnHeight)
            ]
        )
        btn2.addTarget(self, action: #selector(btnActionTwo), for: .touchUpInside)
        
        btn3 = getButton(tag: 2)
        view.addSubview(btn3)
        btn3.setTitle("3st", for: .normal)
        NSLayoutConstraint.activate(
            [btn3.topAnchor.constraint(equalTo: edtAnswer4.bottomAnchor, constant: 30), btn3.leftAnchor.constraint(equalTo: self.view.centerXAnchor,constant: 40), btn3.widthAnchor.constraint(equalToConstant: btnWidth), btn3.heightAnchor.constraint(equalToConstant: btnHeight)
            ]
        )
        btn3.addTarget(self, action: #selector(btnActionThree), for: .touchUpInside)
        
        
        btn4 = getButton(tag: 3)
        view.addSubview(btn4)
        btn4.setTitle("4st", for: .normal)
        NSLayoutConstraint.activate(
            [btn4.topAnchor.constraint(equalTo: edtAnswer4.bottomAnchor, constant: 30), btn4.leftAnchor.constraint(equalTo: self.view.centerXAnchor,constant: 110), btn4.widthAnchor.constraint(equalToConstant: btnWidth), btn4.heightAnchor.constraint(equalToConstant: btnHeight)
            ]
        )
        btn4.addTarget(self, action: #selector(btnActionFour), for: .touchUpInside)
        
      
        
    }
    
    @objc func btnActionOne(sender: UIButton) {
        btn1.backgroundColor=UIColor.red
        btn2.backgroundColor=UIColor.white
        btn3.backgroundColor=UIColor.white
        btn4.backgroundColor=UIColor.white
        
        btn1.setTitleColor(UIColor.white, for: .normal)
        btn2.setTitleColor(UIColor.black, for: .normal)
        btn3.setTitleColor(UIColor.black, for: .normal)
        btn4.setTitleColor(UIColor.black, for: .normal)
        
        position = 0
    }
    
    @objc func btnActionTwo(sender: UIButton) {
        btn1.backgroundColor=UIColor.white
        btn2.backgroundColor=UIColor.red
        btn3.backgroundColor=UIColor.white
        btn4.backgroundColor=UIColor.white
        
        btn1.setTitleColor(UIColor.black, for: .normal)
        btn2.setTitleColor(UIColor.white, for: .normal)
        btn3.setTitleColor(UIColor.black, for: .normal)
        btn4.setTitleColor(UIColor.black, for: .normal)
        
        position = 1
    }
    
    @objc func btnActionThree(sender: UIButton) {
        btn1.backgroundColor=UIColor.white
        btn2.backgroundColor=UIColor.white
        btn3.backgroundColor=UIColor.red
        btn4.backgroundColor=UIColor.white
        
        btn1.setTitleColor(UIColor.black, for: .normal)
        btn2.setTitleColor(UIColor.black, for: .normal)
        btn3.setTitleColor(UIColor.white, for: .normal)
        btn4.setTitleColor(UIColor.black, for: .normal)
        
        position = 2
    }
    
    @objc func btnActionFour(sender: UIButton) {
        btn1.backgroundColor=UIColor.white
        btn2.backgroundColor=UIColor.white
        btn3.backgroundColor=UIColor.white
        btn4.backgroundColor=UIColor.red
        
        btn1.setTitleColor(UIColor.black, for: .normal)
        btn2.setTitleColor(UIColor.black, for: .normal)
        btn3.setTitleColor(UIColor.black, for: .normal)
        btn4.setTitleColor(UIColor.white, for: .normal)
        
        position = 3
    }
    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        lbl.text = "Enter question"
        lbl.textColor = UIColor.black
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.numberOfLines = 2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let lblTitleAnswer: UILabel = {
        let lbl=UILabel()
        lbl.text = "Enter answer"
        lbl.textColor = UIColor.black
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.numberOfLines = 2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    
    
    let edtQuestion : UITextField = {
        let edt = UITextField()
        edt.textAlignment = .center
        edt.textColor = UIColor.red
        edt.textAlignment = .center
        edt.layer.cornerRadius = 15.0
        edt.backgroundColor = .lightGray
        edt.font = UIFont.systemFont(ofSize: 14)
        edt.isEnabled = true
        edt.isUserInteractionEnabled = true
        edt.autocorrectionType = UITextAutocorrectionType.no
        edt.keyboardType = UIKeyboardType.default
        edt.returnKeyType = UIReturnKeyType.done
        edt.clearButtonMode = UITextFieldViewMode.whileEditing
        edt.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        return edt
    }()
    
    let edtAnswer1 : UITextField = {
        let edt = UITextField(frame: CGRect(x: 0, y: 0, width: 350, height: 40))
        edt.center = CGPoint(x: 200, y: 290)
        edt.textAlignment = .center
        edt.placeholder = "1st"
        edt.textColor = UIColor.red
        edt.textAlignment = .center
        edt.layer.cornerRadius = 15.0
        edt.backgroundColor = .lightGray
        edt.font = UIFont.systemFont(ofSize: 14)
        edt.isEnabled = true
        edt.isUserInteractionEnabled = true
        edt.autocorrectionType = UITextAutocorrectionType.no
        edt.keyboardType = UIKeyboardType.default
        edt.returnKeyType = UIReturnKeyType.done
        edt.clearButtonMode = UITextFieldViewMode.whileEditing
        edt.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        return edt
    }()
    
    
    let edtAnswer2 : UITextField = {
        let edt = UITextField(frame: CGRect(x: 0, y: 0, width: 350, height: 40))
        edt.center = CGPoint(x: 200, y: 360)
        edt.textAlignment = .center
        edt.placeholder = "2nd"
        edt.textColor = UIColor.red
        edt.textAlignment = .center
        edt.layer.cornerRadius = 15.0
        edt.backgroundColor = .lightGray
        edt.font = UIFont.systemFont(ofSize: 14)
        edt.isEnabled = true
        edt.isUserInteractionEnabled = true
        edt.autocorrectionType = UITextAutocorrectionType.no
        edt.keyboardType = UIKeyboardType.default
        edt.returnKeyType = UIReturnKeyType.done
        edt.clearButtonMode = UITextFieldViewMode.whileEditing
        edt.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        return edt
    }()
    
    let edtAnswer3 : UITextField = {
        let edt = UITextField(frame: CGRect(x: 0, y: 0, width: 350, height: 40))
        edt.center = CGPoint(x: 200, y: 430)
        edt.textAlignment = .center
        edt.placeholder = "3st"
        edt.textColor = UIColor.red
        edt.textAlignment = .center
        edt.layer.cornerRadius = 15.0
        edt.backgroundColor = .lightGray
        edt.font = UIFont.systemFont(ofSize: 14)
        edt.isEnabled = true
        edt.isUserInteractionEnabled = true
        edt.autocorrectionType = UITextAutocorrectionType.no
        edt.keyboardType = UIKeyboardType.default
        edt.returnKeyType = UIReturnKeyType.done
        edt.clearButtonMode = UITextFieldViewMode.whileEditing
        edt.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        return edt
    }()
    
    let edtAnswer4 : UITextField = {
        let edt = UITextField(frame: CGRect(x: 0, y: 0, width: 350, height: 40))
        edt.center = CGPoint(x: 200, y: 500)
        edt.textAlignment = .center
        edt.placeholder = "4st"
        edt.textColor = UIColor.red
        edt.textAlignment = .center
        edt.layer.cornerRadius = 15.0
        edt.backgroundColor = .lightGray
        edt.font = UIFont.systemFont(ofSize: 14)
        edt.isEnabled = true
        edt.isUserInteractionEnabled = true
        edt.autocorrectionType = UITextAutocorrectionType.no
        edt.keyboardType = UIKeyboardType.default
        edt.returnKeyType = UIReturnKeyType.done
        edt.clearButtonMode = UITextFieldViewMode.whileEditing
        edt.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        return edt
    }()
    
    let lblAnswer: UILabel = {
        let lbl = UILabel()
        lbl.text = "Answer"
        lbl.textColor = UIColor.black
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.numberOfLines = 2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let btnSave: UIButton = {
        let btn=UIButton()
        btn.setTitle("Save", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = UIColor.red
        btn.layer.cornerRadius = 10
        btn.layer.masksToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints=false
        btn.addTarget(self, action: #selector(btnSaveAction), for: .touchUpInside)
        return btn
    }()
    
    func getButton(tag: Int) -> UIButton {
        let btn=UIButton()
        btn.tag=tag
        btn.setTitle("Option", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.backgroundColor=UIColor.white
        btn.layer.borderWidth=1
        btn.layer.borderColor=UIColor.darkGray.cgColor
        btn.layer.cornerRadius=5
        btn.clipsToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        return btn
    }
    
    
    @objc func btnSaveAction() {
        let name = edtQuestion.text ?? ""
        let answer1 = edtAnswer1.text ?? ""
        let answer2 = edtAnswer2.text ?? ""
        let answer3 = edtAnswer3.text ?? ""
        let answer4 = edtAnswer4.text ?? ""
        if !name.isEmpty && !answer1.isEmpty && !answer2.isEmpty && !answer3.isEmpty && !answer4.isEmpty {
            let answers :[String] = [answer1, answer2, answer3, answer4]
            let question = Question1(question: name, answers: answers,correct: position, collapsed: false)
            delegate.updatedTableView(question: question)
        }
        else {
            self.showToast(message: "Yout must fill full of information", font: .systemFont(ofSize: 12.0))
        }
        navigationController?.popViewController(animated: true)
    }
}

extension AddQuestionViewController {
    func showToast(message: String, font: UIFont) {
        let toastLabel = UILabel(
            frame: CGRect(x: self.view.frame.size.width/2 - 75,
                          y: self.view.frame.size.height-100,
                          width: 150,
                          height: 35)
        )
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(_) in
            toastLabel.removeFromSuperview()
        })
    }
}

