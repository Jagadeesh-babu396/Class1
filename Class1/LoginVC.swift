//
//  ViewController.swift
//  Class1
//
//  Created by Jagadeesh on 14/03/23.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {
    
    
//    @IBOutlet var label: UILabel!
//    @IBOutlet var paragraphLbl: UILabel!
//
//    let label1 = UILabel()
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var google: UIButton!
    @IBOutlet weak var facebook: UIButton!
    
    
    var isValidEmail = false
    var isValidPassword = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        login.alpha = 0.5
        login.isEnabled = false

  // MARK: Calling CornerRadius
        
        cornerRadius()
  
// Setting Textfield border
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.gray.cgColor
        emailTextField.layer.cornerRadius = 5
        
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.gray.cgColor
        passwordTextField.layer.cornerRadius = 5
    }
    
//Marks:- Set Dismiss Button
    
    @IBAction func BackBtn(_ sender: Any) {
        self.dismiss(animated: true)
        
    }
    

    @IBAction func loginBtn(_ sender: Any) {
        
        
    }
    
    @IBAction func signBtn(_ sender: Any) {
        
    }
    
    @IBAction func forgotpassword(_ sender: Any) {
        
        
    }
    
//Mark:- Set CornerRadius
    
    func cornerRadius() {
        
        login.layer.cornerRadius = 10
        
        google.layer.cornerRadius = 5
        facebook.layer.cornerRadius = 5
    }
    
//Mark: Set TextField Delegates
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        return true
        
    }
   
    func textFieldDidBeginEditing(_ textField: UITextField){
        

        
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
        
    }

   
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason){
        
    }
    
   
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

       
        if textField == emailTextField {
            if emailTextField.text?.count ?? 0 <= 19 && passwordTextField.text?.count ?? 0 <= 24 {
                emailTextField.layer.borderColor = UIColor.gray.cgColor
                passwordTextField.layer.borderColor = UIColor.gray.cgColor
            }else {
                emailTextField.layer.borderColor = UIColor.red.cgColor
                passwordTextField.layer.borderColor = UIColor.red.cgColor
            }
        }

        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField){

        if emailTextField.text?.count ?? 0 > 9 && emailTextField.text?.count ?? 0 < 20 {
            isValidEmail = true
            login.alpha = 1
            emailTextField.layer.borderColor = UIColor.gray.cgColor
            login.isEnabled = true
        }else {
            login.isEnabled = false
            login.alpha = 0.5
            emailTextField.layer.borderColor = UIColor.red.cgColor
        }
        
        
        if passwordTextField.text?.count ?? 0 > 5 && passwordTextField.text?.count ?? 0 < 25 {
            
            passwordTextField.layer.borderColor = UIColor.gray.cgColor
            isValidPassword = true
            login.alpha = 1
            login.isEnabled = true
        }else {
            login.isEnabled = false
            login.alpha = 0.5
            passwordTextField.layer.borderColor = UIColor.red.cgColor
        }
        
//MARK: Set Btn enable and disable
        
        if isValidEmail && isValidPassword {
            login.isEnabled = true
            login.alpha = 1
            emailTextField.layer.borderColor = UIColor.gray.cgColor
            passwordTextField.layer.borderColor = UIColor.green.cgColor
        }else {
            login.isEnabled = false
            login.alpha = 0.5
            emailTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.layer.borderColor = UIColor.red.cgColor
        }
    }

    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == emailTextField {
            passwordTextField.becomeFirstResponder()
            
        }else {
            
            textField.resignFirstResponder()
        }
            
        return true
        
    }

  
    func textField(_ textField: UITextField, willPresentEditMenuWith animator: UIEditMenuInteractionAnimating) {
        
    }

    
    func textField(_ textField: UITextField, willDismissEditMenuWith animator: UIEditMenuInteractionAnimating) {
        
    }
    
    
}

