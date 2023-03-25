//
//  SignUpVC.swift
//  Class1
//
//  Created by Jagadeesh on 18/03/23.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confromPasswordTextField: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var google: UIButton!
    @IBOutlet weak var facebook: UIButton!
    
    var isValidEmail = false
    var isValidPassword = false
    var isConfromPassword = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        login.isEnabled = true
        login.alpha = 0.5
//Marks:- Calling CornerRadius
        
        self.cornerRadius()
        
//MARK: Calling BorderWidth
        self.borderWidth()
        

        
    }
    
//Mark:- Set Back Btn
    
    @IBAction func backBtn(_ sender: Any) {
        self.dismiss(animated: true)
        
    }
    

    @IBAction func loginBtn(_ sender: Any) {
        
    }
    
        
    @IBAction func loginAction(_ sender: Any) {
        
    }
 
//Mark:- Set cornerRadius
    
    func cornerRadius() {
        
        login.layer.cornerRadius = 10
        
        google.layer.cornerRadius = 10
        facebook.layer.cornerRadius = 10
        
    }
    
//MARK: Set a borderWidth
    func borderWidth() {
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.gray.cgColor
        emailTextField.layer.cornerRadius = 5
        
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.gray.cgColor
        passwordTextField.layer.cornerRadius = 5
        
        confromPasswordTextField.layer.borderWidth = 1
        confromPasswordTextField.layer.borderColor = UIColor.gray.cgColor
        confromPasswordTextField.layer.cornerRadius = 5
        
    }
}

//MARK: extension tectfied delgdle

extension SignUpVC: UITextFieldDelegate {
    
    
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

        

        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField){

        if emailTextField.text?.count ?? 0 > 4 && emailTextField.text?.count ?? 0 < 11 {
            isValidEmail = true
            emailTextField.layer.borderColor = UIColor.gray.cgColor
        }else {
            isValidEmail = false
            emailTextField.layer.borderColor = UIColor.red.cgColor
        }
        
        
        if passwordTextField.text?.count ?? 0 > 5 && passwordTextField.text?.count ?? 0 < 11 {
            
            passwordTextField.layer.borderColor = UIColor.gray.cgColor
            isValidPassword = true
        }else {
            passwordTextField.layer.borderColor = UIColor.red.cgColor
        }
        
        if confromPasswordTextField.text?.count ?? 0 > 5 && confromPasswordTextField.text?.count ?? 0 < 10 {
            confromPasswordTextField.layer.borderColor = UIColor.gray.cgColor
            isConfromPassword = true
        }else {
            confromPasswordTextField.layer.borderColor = UIColor.red.cgColor
        }
        
//MARK: Set Btn enable and disable
        
        if isValidEmail && isValidPassword && isConfromPassword {
            login.isEnabled = true
            login.alpha = 1
        }else {
            login.isEnabled = false
            login.alpha = 0.5
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


    


