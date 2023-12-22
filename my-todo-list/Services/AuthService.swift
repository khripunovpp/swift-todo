//
//  AuthController.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 20/12/2023.
//

import Foundation
import FirebaseAuth

class AuthService {
    static let shared = AuthService()
    private var user: FirebaseAuth.User?
    private init(){
        self.user = Auth.auth().currentUser
        Auth.auth().addIDTokenDidChangeListener(){ [weak self] auth,user in
            self?.user = user
        }
    }
    public var isSignnedIn: Bool {
        return self.user != nil
    }
    
    public var currentUser: UserInfo? {
        return self.user
    }
    
    public var uuid: String {
        return self.currentUser?.uid ?? ""
    }
    
    func create() -> AuthService {
        return AuthService()
    }
}
