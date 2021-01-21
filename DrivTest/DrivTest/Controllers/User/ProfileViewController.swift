//
//  ProfileViewController.swift
//  DrivTest
//
//  Created by Minh Tri on 1/21/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//
import RealmSwift
import UIKit

class ProfileViewController: UIViewController {

    let realm = try!Realm()
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var passLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    private let notLoginLabel: UILabel = {
        let notLoginlabel = UILabel()
        notLoginlabel.textAlignment = .center
        notLoginlabel.text = "Bạn cần đăng nhập để chỉnh sửa hồ sơ!"
        notLoginlabel.font = .systemFont(ofSize: 30, weight: .semibold)
        notLoginlabel.numberOfLines = 2
        return notLoginlabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setPlaceHolder()
        view.addSubview(notLoginLabel)
        
        if curId == -1{ // chua Đn
            userLabel.isHidden = true
            passLabel.isHidden = true
            nameLabel.isHidden = true
            userField.isHidden = true
            passField.isHidden = true
            nameField.isHidden = true
            saveButton.isHidden = true
        }
        else {
            notLoginLabel.isHidden = true
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        notLoginLabel.frame = CGRect(x: 20, y: view.frame.size.height/2 - 40, width: view.frame.size.width - 40, height: 80)
    }
    
    func setPlaceHolder(){
        let people = realm.objects(person.self)
        for person in people{
            if person.id == curId {
                nameField.placeholder = person.name
                userField.placeholder = person.username
                passField.placeholder = person.password
            }
        }
    }
    
    @IBAction func tapSave(_ sender: Any) {
        guard let user = userField.text, let pass = passField.text, let name = nameField.text else {
            return
        }
        
        if checkUsername(_username: user) == true{
            editUser(_username: user, _password: pass, _name: name)
            showAlertEditSuccess()
        }
        else {
            showAlertEditFailed()
        }
    }
    
    func checkUsername(_username: String) -> Bool {
        var res: Bool = true
        let people = realm.objects(person.self)
        let curUserName = getuserName()
        for person in people{
            if person.id != curId{
                if person.username == curUserName{
                    res = false
                }
            }
        }
        return res
    }
    
    func getuserName() -> String {
        var res: String = ""
        let people = realm.objects(person.self)
        for person in people{
            if person.id == curId {
                res = person.username
            }
        }
        return res
    }
    
    func editUser(_username: String, _password: String, _name: String){
        let people = realm.objects(person.self)
        for person in people{
            if person.id == curId {
                realm.beginWrite()
                if _username != "" { person.username = _username }
                if _password != "" { person.password = _password }
                if _name != "" { person.name = _name }
                try! realm.commitWrite()
                return
            }
        }
    }
    
    func showAlertEditFailed(){
        let alert = UIAlertController(title: "Sửa thất bại!", message: "Tên đăng nhập mới bị trùng.", preferredStyle: .alert)
       
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in }
       
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
    
    func showAlertEditSuccess(){
        let alert = UIAlertController(title: "Sửa thành công!", message: "Bấm ok để tiếp tục", preferredStyle: .alert)
       
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in }
       
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
}
