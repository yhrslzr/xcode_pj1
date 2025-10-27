//
//  TransportView.swift
//  Oreo
//
//  Created by WIN603 on 19/09/25.
//

import SwiftUI

struct TransportView: View {
    @Binding var pressed: Bool
    // a fuerzas debe conseguir un dato de afuera (Bool = false)
    
    let name: String
    let icon: String
    
    var index: Int
    @Binding var selectedIndex : Int
    
    func labelPresionado () -> CGFloat {
        return pressed ? 180 : 0
    }
    
    var body: some View {
        VStack {
            Label(name, systemImage: icon)
                .modifier(CardViewModifier(bgColor: Color.green))
                .rotationEffect(.degrees(labelPresionado()))
                .onTapGesture {
                    withAnimation(){
                        selectedIndex = index
                        self.pressed.toggle()
                    }
                }
            
            Text("index seleccionado es: \(selectedIndex)")
            
            // coloca un monito corriendo cuando haces clic a un transporte
//            if pressed {
//                Image(systemName: "figure.run")
//                    .foregroundColor(.white)
//                    .padding(8)
//                    .background(Color.blue)
//                    .clipShape(Ellipse())
//                    .transition(.slide)
//            }
            
        }
        
    }
}

#Preview {
    TransportView(pressed: .constant(false),name: "Barco", icon: "sailboat", index: 0, selectedIndex: .constant(-1))
}
