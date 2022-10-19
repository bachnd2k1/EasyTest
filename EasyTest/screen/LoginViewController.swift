//
//  LoginViewController.swift
//  EasyTest
//
//  Created by Bach Nghiem on 12/10/2022.
//

import UIKit
import GoogleSignIn
class LoginViewController: UIViewController, UITextFieldDelegate {

    var window: UIWindow?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Easy Test"
        self.view.backgroundColor = UIColor.green
        edtName.delegate = self
        edtPassword.delegate = self
        setupViews()
       
    }
    
    func setupViews() {
        self.view.addSubview(edtName)
        self.view.addSubview(edtPassword)
        self.view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive=true
        lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblTitle.widthAnchor.constraint(equalToConstant: 250).isActive=true
        lblTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true



        self.view.addSubview(btnLogin)
        btnLogin.heightAnchor.constraint(equalToConstant: 50).isActive=true
        btnLogin.widthAnchor.constraint(equalToConstant: 250).isActive=true
        btnLogin.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnLogin.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive=true


        self.view.addSubview(lblSignUp)
        self.view.addSubview(googleImage)
        self.view.addSubview(facebookImage)
    
    }
    
    let edtName : UITextField = {
        let edt = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 40))
        edt.center = CGPoint(x: 210, y: 300)
        edt.textAlignment = .center
        edt.placeholder = "Username"
        edt.textColor = UIColor.red
        edt.textAlignment = .center
        edt.layer.cornerRadius = 15.0
        edt.backgroundColor = .lightGray
        edt.font = UIFont.systemFont(ofSize: 16)
        edt.isEnabled = true
        edt.isUserInteractionEnabled = true
        edt.autocorrectionType = UITextAutocorrectionType.no
        edt.keyboardType = UIKeyboardType.default
        edt.returnKeyType = UIReturnKeyType.done
        edt.clearButtonMode = UITextFieldViewMode.whileEditing
        edt.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        return edt
    }()
    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        lbl.text="Welcome back!"
        lbl.textColor = UIColor.black
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 36)
        lbl.numberOfLines=2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let lblTitle1: UILabel = {
        let lbl = UILabel()
        lbl.text = "Login to continue"
        lbl.textColor = UIColor.black
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.numberOfLines=2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    
    let lblSignUp: UILabel = {
        let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        lbl.center = CGPoint(x: 210, y: 520)
        lbl.textColor = UIColor.black
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.textAlignment = .center
        lbl.text = "Or sign up with"
        return lbl
    }()
    
   
    let edtPassword : UITextField = {
        let edt = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 40))
        edt.center = CGPoint(x: 210, y: 370)
        edt.textAlignment = .center
        edt.placeholder = "Password"
        edt.textColor = UIColor.red
        edt.textAlignment = .center
        edt.layer.cornerRadius = 15.0
        edt.backgroundColor = .lightGray
        edt.font = UIFont.systemFont(ofSize: 16)
        edt.isEnabled = true
        edt.isUserInteractionEnabled = true
        edt.autocorrectionType = UITextAutocorrectionType.no
        edt.keyboardType = UIKeyboardType.default
        edt.returnKeyType = UIReturnKeyType.done
        edt.clearButtonMode = UITextFieldViewMode.whileEditing
        edt.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        return edt
    }()
    
    let btnLogin: UIButton = {
        let btn = UIButton()
        btn.setTitle("Login", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = UIColor.red
        btn.layer.cornerRadius = 12
        btn.layer.masksToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        btn.addTarget(self, action: #selector(btnLoginAction), for: .touchUpInside)
        return btn
    }()
    
    let googleImage : UIImageView = {
        let googleImage = UIImage(named: "google_img.jpg")
        let myImageView:UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 45, height: 45))
        myImageView.center = CGPoint(x: 170, y: 575)
        myImageView.image = googleImage
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(btnLoginViaGoogle(_:)))
        myImageView.isUserInteractionEnabled = true
        myImageView.addGestureRecognizer(tapGestureRecognizer)
        return myImageView
    }()
    
    let facebookImage : UIImageView = {
        let googleImage = UIImage(named: "fb_img.jpg")
        let myImageView:UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 45, height: 45))
        myImageView.center = CGPoint(x: 270, y: 575)
        myImageView.image = googleImage
        return myImageView
    }()
    
    
    @objc func btnLoginAction() {
        GIDSignIn.sharedInstance.signIn(with: Utils.signInConfig, presenting: self) { user, error in
            guard error == nil else { return }
            let v = ViewController()
            self.navigationController?.pushViewController(v, animated: true)
          }
    }
    
    @objc func btnLoginViaGoogle(_ sender:AnyObject) {
        print("Imageview Clicked")
        GIDSignIn.sharedInstance.signIn(with: Utils.signInConfig, presenting: self) { user, error in
            guard error == nil else { return }
            let v = ViewController()
            self.navigationController?.pushViewController(v, animated: true)
          }
    }
}
