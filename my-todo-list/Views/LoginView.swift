//
//  LoginView.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 15/12/2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "Todo list")
                
                LoginForm()
                
                Spacer()
            }
        }
    }
}


#Preview {
    LoginView()
}
