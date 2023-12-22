//
//  AppViewModel.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 21/12/2023.
//

import Foundation

class AppViewModel {
    
    var isSignnedIn: Bool {
        return AuthService.shared.isSignnedIn
    }
}
