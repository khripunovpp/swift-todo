//
//  TodosView.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 15/12/2023.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

struct TodosView: View {
    @StateObject var viewModel = TodosViewModel()
    @FirestoreQuery var todos: [Todo]
    
    init() {
        self._todos = FirestoreQuery(collectionPath: "users/\(AuthService.shared.uuid)/todos")
    }
    
    
    var body: some View {
        NavigationView {
            VStack{
                if todos.count == 0 {
                    Text("zero")
                }
                List(todos) { item in
                    TodoItemView(todo: item)
                        .swipeActions{
                            Button("Delete") {
                                viewModel.delete(id: item.id)
                            }.tint(.red)
                        }
                }
            }
            .navigationTitle("Todos")
            .toolbar {
                Button{
                    viewModel.openAddNewTodo()
                } label: {
                    HStack {
                        Text("Add")
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $viewModel.displayNewTodoForm) {
                NewTodoView(displayState: $viewModel.displayNewTodoForm)
            }
        }
    }
}
