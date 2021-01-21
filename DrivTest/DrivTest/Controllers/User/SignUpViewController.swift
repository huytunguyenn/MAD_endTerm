//
//  SignUpViewController.swift
//  DrivTest
//
//  Created by HUYTU on 12/16/20.
//  Copyright © 2020 18120200_18120250_18120254. All rights reserved.
//
import RealmSwift
import UIKit

class SignUpViewController: UIViewController {

    let realm = try! Realm()
    
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func tapSignUp(_ sender: Any) {
        print("button sign up tapped!")
        guard let user = userField.text, !user.isEmpty,
        let password = passField.text, !password.isEmpty else {
            print("missing data type")
            
            showAlertSignUpFailed()
            return
        }
        
        if checkSignup(_username: user) == false{
            showAlertSignUpFailed()
            return
        }
        
        guard let name = nameField.text else { return }
        addPerson(_username: user, _password: password, _name: name)
        
        showAlertSignUpSuccess()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func checkSignup(_username: String) -> Bool{
        let people = realm.objects(person.self)
        for person in people{
            if(_username == person.username){
                print("username already exist")
                return false
            }
        }
        return true
    }
    
    func addPerson(_username: String, _password: String, _name: String){
        var maxID = 0
        let people = realm.objects(person.self)
        for person in people{
            if(maxID < person.id){
                maxID = person.id
            }
        }
        
        let joe = person()
        joe.id = maxID + 1
        joe.username = _username
        joe.password = _password
        joe.name = _name
        
        realm.beginWrite()
        realm.add(joe)
        try! realm.commitWrite()
    }
    
    func showAlertSignUpFailed(){
        let alert = UIAlertController(title: "Đăng ký thất bại!", message: "Tên đăng nhập trùng hoặc thiếu tên đăng nhập/ mật khẩu.", preferredStyle: .alert)
       
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in }
       
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
    
    func showAlertSignUpSuccess(){
        let alert = UIAlertController(title: "Đăng ký thành công!", message: "Bấm ok để tiếp tục.", preferredStyle: .alert)
       
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
       
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
    
}
