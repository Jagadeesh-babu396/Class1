//
//  HomeViewController.swift
//  Class1
//
//  Created by Jagadeesh on 17/03/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var continueBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 // Calling cornerRadius fun

        self.cornerRadius()
    
    }
    

    @IBAction func loginPage() {
        
    }
    
    @IBAction func signUp() {
        
    }
    
    @IBAction func continueGuestBtn() {
        
    }
    
//Mark:- Set corner Radius
    func cornerRadius() {
     
        loginBtn.layer.cornerRadius = 10
   
        signupBtn.layer.borderWidth = 2
        signupBtn.layer.borderColor = UIColor.white.cgColor
        signupBtn.layer.cornerRadius = 10
    }
    
}
