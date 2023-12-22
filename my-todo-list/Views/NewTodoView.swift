//
//  NewTodoView.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 19/12/2023.
//

import SwiftUI

struct NewTodoView: View {
    @StateObject var viewModel = NewTodoViewModel()
    @Binding var displayState: Bool
    
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 20)
            
            Form {
                TextField("Title", text: $viewModel.title)
                
                DatePicker("Due date", selection:$viewModel.dueDate)
                    .datePickerStyle(.automatic)
                
                BrandButton(label: "Create") {
                    viewModel.create() {
                        displayState = false
                    }
                }
            }.alert(isPresented: $viewModel.showAlert) {
                Alert(
                    title: Text("Validation Error"),
                    message: Text(viewModel.message)
                )
            }
        }
    }
}

#Preview {
    NewTodoView(displayState: Binding(get: {
        return false
    }, set: { _ in
        
    }))
}
