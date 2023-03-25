//
//  Methods.swift
//  Class1
//
//  Created by Jagadeesh on 20/03/23.
//

import Foundation

class name {
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//        return emailPred.evaluate(with: email)
        return emailPred.evaluate(with: email)
    }
}
