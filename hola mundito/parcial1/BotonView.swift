//
//  botoncito.swift
//  hola mundito
//
//  Created by WIN603 on 05/09/25.
//

import SwiftUI

struct BotonView: View {
    
    @State private var modtam: CGFloat = 3.0
    @State private var modrot: CGFloat = 0
    
    var body: some View {
        Image(systemName: "suit.heart")
            .foregroundColor(.black)
            .scaleEffect(modtam)
            .rotationEffect(Angle(degrees: modrot))
        HStack{
            
            Button(action: {
                
                withAnimation(){
                    modtam += 1.0
                }
                
            }) {
                Text("Aumentar :3")
                    .padding(10)
            }
            .background(Color.cyan)
            .cornerRadius(40)
            .foregroundColor(.white)
            
            Button(action: {
                
                withAnimation(){
                    modtam -= 1.0
                }
                
            }) {
                Text("Disminuir c:")
                    .padding(10)
            }
            .background(Color.red)
            .cornerRadius(40)
            .foregroundColor(.white)
        }
        
        HStack{
            
            Button(action: {
                
                modrot -= 10
                
            }) {
                Text("Girar izq :3")
                    .padding(10)
            }
            .background(Color.yellow)
            .cornerRadius(40)
            .foregroundColor(.white)
            
            Button(action: {
                
                modrot += 10
                
            }) {
                Text("Girar der c:")
                    .padding(10)
            }
            .background(Color.green)
            .cornerRadius(40)
            .foregroundColor(.white)
        }
        
    }
}

#Preview {
    BotonView()
}
