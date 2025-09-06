//
//  StacksView.swift
//  hola mundito
//
//  Created by WIN603 on 13/08/25.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        // "VStack" = Column en Android Studio
        ZStack(
         alignment: .bottomLeading
         ){ // "ZStack" = Box en Android Studio
         Color.blue.ignoresSafeArea(edges: .bottom)
         Color.red.opacity(0.5)
        // HStack(){ // "HStack" = Row en Android Studio
        /*VStack(
            alignment: .center, spacing: 20
        ){*/

            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(height: 350)
            Text("Bye, W!")
            Text("aaaaa").foregroundColor(Color.purple)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        // primero "frame" y después "background", para rellenar la pantalla por completo si se indica
        .foregroundColor(.red)
//        .ignoresSafeArea() //
        .background(Color.teal)
        
    }
}

#Preview {
    StacksView()
}
