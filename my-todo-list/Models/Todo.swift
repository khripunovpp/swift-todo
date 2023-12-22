//
//  Todo.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 15/12/2023.
//

import Foundation


struct Todo:Codable,Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let done: Bool
    
    func toDict() -> [String:Any]{
        return [
            "id" : self.id,
            "title": self.title,
            "dueDate": self.dueDate
        ]
    }
    
    
}
