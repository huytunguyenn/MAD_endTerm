//
//  SignInViewController.swift
//  DrivTest
//
//  Created by HUYTU on 12/15/20.
//  Copyright © 2020 18120200_18120250_18120254. All rights reserved.
//
import RealmSwift
import UIKit

class person: Object{
    @objc dynamic var id: Int = -1
    @objc dynamic var username: String = ""
    @objc dynamic var password: String = ""
    @objc dynamic var name: String = ""
}

class SignInViewController: UIViewController {

    let realm = try! Realm()

    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func tapSignIn(_ sender: Any) {
        print("button sign in tapped!")
        guard let user = userField.text, !user.isEmpty,
            let password = passField.text, !password.isEmpty else {
                print("missing data type")
                showAlertLoginFailed2()
                return
            }
        
        checkLogin(_username: user, _password: password)
    }
    
    @IBAction func tapBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func checkLogin(_username: String, _password: String){
        let people = realm.objects(person.self)
        for person in people{
            if(_username == person.username && _password == person.password){
                print("You have sign in")
                
                let vc = storyboard?.instantiateViewController(identifier: "SignInSuccessViewController") as! SignInSuccessViewController
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
                return
            }
        }
        print("login failed!")
        showAlertLoginFailed()
    }
    
    func showAlertLoginFailed(){
        let alert = UIAlertController(title: "Đăng nhập thất bại!", message: "Tên đăng hoặc mật khẩu sai.", preferredStyle: .alert)
       
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in }
       
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
    
    func showAlertLoginFailed2(){
        let alert = UIAlertController(title: "Đăng nhập thất bại!", message: "Tên đăng nhập hoặc mật khẩu trống.", preferredStyle: .alert)
       
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in }
       
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
}
