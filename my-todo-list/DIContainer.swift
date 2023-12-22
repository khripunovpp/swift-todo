//
//  DIContainer.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 21/12/2023.
//

import Foundation

enum DIToken {
    case AuthController
}

class DIContainer:ObservableObject {
    private var list: [DIToken:Any] = [:]
    
    init() {
        
    }
    
    func add(
        _ token: DIToken,
        value: Any
    ) {
        self.list[token] = value
    }
    
    func get(
        _ token: DIToken
    ) -> Any? {
        return self.list[token]
    }
}
