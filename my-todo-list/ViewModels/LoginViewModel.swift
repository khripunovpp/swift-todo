//
//  LoginViewModel.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 15/12/2023.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var passsword = ""
    @Published var errors = ""
    
    init(){}
    
    func login() {
        print("login")
        Auth.auth().signIn(withEmail: email, password: passsword){ result,errors in
            guard errors == nil else {
                print("Error: \(errors!)")
                return
            }
        }
    }
}
