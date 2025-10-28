//
//  NavegaView.swift
//  navegacion
//
//  Created by Yahir Salazar on 29/09/25.
//

import SwiftUI

struct NavegaView: View {
    var body: some View {
        VStack{
            Text("Bienvenido a la Nintendo Store")
            
            Spacer()
            NavigationStack{
                NavigationLink(destination: ProductView()){
                    ItemRowView()
                }
                Spacer()
                Text("Desarrollado por: Yahir Slzr 🪼")
                
            }
        }
    }
}

#Preview {
    NavegaView()
}
