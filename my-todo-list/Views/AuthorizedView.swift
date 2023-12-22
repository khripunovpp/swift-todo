//
//  AuthorizedView.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 18/12/2023.
//

import SwiftUI

struct AuthorizedView: View {
    var body: some View {
        TabView {
            TodosView().tabItem {
                Label("Todos",systemImage: "house" )
            }
            ProfileView().tabItem {
                Label("Account",systemImage: "person.circle" )
            }
        }
    }
}

#Preview {
    AuthorizedView()
}
