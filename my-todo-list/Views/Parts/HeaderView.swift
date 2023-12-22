//
//  HeaderView.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 17/12/2023.
//

import SwiftUI

struct HeaderView: View {
    var title = ""

    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(Color.black)
            
            Text(self.title)
                .font(.system(size: 50))
                .foregroundStyle(Color.white)
            
        }
        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    HeaderView()
}
