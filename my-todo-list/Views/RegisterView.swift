//
//  RegisterView.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 15/12/2023.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "Sign Up")
                
                RegisterForm()
                
                Spacer()
            }
        }
    }
}

#Preview {
    RegisterView()
}
