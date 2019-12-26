//
//  UpdateProfileViewController.swift
//  Hello MVP
//
//  Created by ahmed elmemy on 12/23/19.
//  Copyright © 2019 ElMeMy. All rights reserved.
//

import UIKit

class UpdateProfileViewController: UIViewController {
    
    
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var nameTextField: UITextField!
    @IBOutlet private var mobileTextField: UITextField!
    @IBOutlet private var emailTextField: UITextField!
    @IBOutlet private var ageTextField: UITextField!
    @IBOutlet private var genderSegmentedController: UISegmentedControl!
    @IBOutlet private var saveButton: UIButton!
    
    var updateProfilePresenter: UpdateProfilePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = LocalStorage.default.user
        updateProfilePresenter = UpdateProfilePresenter(user: user, viewController: self)
    }
    
    func setName(_ name:String){
        self.nameTextField.text = name
    }
    
    func setMobile(_ mobile:String){
        self.mobileTextField.text = mobile
    }
    
    func setEmail(_ email:String){
        self.emailTextField.text = email
    }
    
    func setAge(_ age:Int){
        self.ageTextField.text = String(age)
    }
    
    func setGender(atIndex index: Int) {
        self.genderSegmentedController.selectedSegmentIndex = index
    }
    
    func getName() -> String{
        return self.nameTextField.text ?? ""
    }
    
    func getEmail() -> String {
        return self.emailTextField.text ?? ""
    }
    
    func getMobileNumber() -> String {
        return self.mobileTextField.text ?? ""
    }
    
    func getGenderIndex() -> Int {
        return self.genderSegmentedController.selectedSegmentIndex
    }
    
    func getAge() -> Int {
        return Int(self.ageTextField.text ?? "0") ?? 0
    }
    
    
    func showAlert(withTitle title: String, andErrorMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func saveButtonAction(_ sender: UIButton) {
        
        self.updateProfilePresenter.saveButtonClicked()
    }
}
