//
//  NewTodoViewModel.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 19/12/2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class NewTodoViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    @Published var message = ""
    
    init(){}
    
    func create(
         complete: @escaping ()->Void
    ) {
        guard self.valid else {
            showAlert = true
            message = "Invalid"
            return
        }
        guard let userId = Auth.auth().currentUser?.uid else {
            showAlert = true
            message = "Unauthtorized"
            return
        }
        showAlert = false
        
        let newId = UUID().uuidString
        let newTodo = Todo(
            id: newId,
            title: title,
            dueDate: dueDate.timeIntervalSince1970,
            done: false
        )
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(newId)
            .setData(newTodo.toDict()) { error in
                if error == nil {
                    complete()
                }
            }
        
    }
    
    var valid:Bool {
        guard title.count > 0 else {
            return false
        }
        return true
    }
}
