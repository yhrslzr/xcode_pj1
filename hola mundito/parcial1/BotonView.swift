//
//  botoncito.swift
//  hola mundito
//
//  Created by WIN603 on 05/09/25.
//

import SwiftUI

struct BotonView: View {
    
    @State private var mod: CGFloat = 3.0
    
    var body: some View {
        Image(systemName: "suit.heart")
            .foregroundColor(.pink)
            .scaleEffect(mod)
        HStack{
            
            Button(action: {
                
                mod += 1.0
                
            }) {
                Text("Aumentar :3")
                    .padding(10)
            }
            .background(Color.cyan)
            .cornerRadius(40)
            .foregroundColor(.white)
            
            Button(action: {
                
                mod -= 1.0
                
            }) {
                Text("Disminuir c:")
                    .padding(10)
            }
            .background(Color.cyan)
            .cornerRadius(40)
            .foregroundColor(.white)
        }
        
    }
}

#Preview {
    BotonView()
}
