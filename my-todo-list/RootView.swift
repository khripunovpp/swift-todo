//
//  ContentView.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 15/12/2023.
//

import SwiftUI

struct RootView: View {
    @StateObject var viewModel = RootViewModel()
    
    var body: some View {
        AppView();
    }
}

#Preview {
    RootView()
}
