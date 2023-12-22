//
//  AppView.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 21/12/2023.
//

import SwiftUI

struct AppView: View {
    let viewModel = AppViewModel()
    
    var body: some View {
        
        if viewModel.isSignnedIn {
                AuthorizedView()
            } else {
                LoginView()
            }
    }
}

#Preview {
    AppView()
}
