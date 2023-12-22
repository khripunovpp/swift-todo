//
//  RegisterViewModel.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 15/12/2023.
//

import Foundation
import FirebaseAuth

class RegisterViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var passsword = ""
    @Published var errors = ""
    
    init(){}
    
    func signup() {
        print("signup start")
        guard validate() else {
            print("invalid")
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: passsword) { result, error in
            guard error == nil else {
                print("Error: \(error!)")
                return
            }
            guard let userId = result?.user.uid else {
                return
            }
            self.setUser(id: userId)
        }
    }
    
    private func setUser(
        id: String
    ){
        let user = User(id: id, email: email, name: name, lastLogInTs: Date().timeIntervalSince1970)
        print(user)
    }
    
    private func validate()->Bool {
        guard !email.trimmingCharacters(in:.whitespaces).isEmpty else {
            errors = "Email is empty"
            return false
        }
        
        guard name.rangeOfCharacter(from: CharacterSet.letters.union(.whitespaces).inverted) == nil else {
            errors = "Name can contains only letters"
            return false
        }
        
        guard passsword.count >= 3 else {
            errors = "Password is to short. Use paswword at least 3 charachters"
            return false
        }
        
        errors = ""
        
        return true
    }
}
