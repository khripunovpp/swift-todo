//
//  TodosViewModel.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 15/12/2023.
//

import Foundation
import FirebaseFirestore

class TodosViewModel: ObservableObject {
    @Published var displayNewTodoForm = false
    
    func openAddNewTodo(){
        self.displayNewTodoForm = true
    }
    
    func closeAddNewTodo(){
        self.displayNewTodoForm = false
    }
    
    func delete(id:String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(AuthService.shared.uuid)
            .collection("todos")
            .document(id)
            .delete()
    }
}
