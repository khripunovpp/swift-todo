//
//  TodoItemView.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 20/12/2023.
//

import SwiftUI

struct TodoItemView: View {
    let todo: Todo
    var date: String {
        return Date(timeIntervalSince1970:todo.dueDate)
            .formatted(
                date: .abbreviated,
                time: .shortened
            )
    }
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(todo.title)
                Text(date)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: todo.done ? "checkmark.circle.fill" : "circle")
            }
        }
    }
}

#Preview {
    TodoItemView(
        todo: Todo(
            id: "", 
            title: "Sample",
            dueDate: Date().timeIntervalSince1970,
            done: false
        )
    )
}
