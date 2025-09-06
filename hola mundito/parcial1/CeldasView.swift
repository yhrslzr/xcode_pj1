//
//  CeldasView.swift
//  hola mundito
//
//  Created by WIN603 on 13/08/25.
//

import SwiftUI

struct CeldasView: View {
    var body: some View {
        VStack(){
            HStack(spacing: 32){
                Text("A1").frame(maxWidth: .infinity)
                Text("B1").frame(maxWidth: .infinity)
                Text("C1").frame(maxWidth: .infinity)
                Text("D1").frame(maxWidth: .infinity)
                Spacer()// separa por espacios equivalentes a los textos
            }
                .frame(width: .infinity)
                .background(Color.purple,ignoresSafeAreaEdges:.bottom)
            
            Spacer()
            
            HStack(spacing: 14){
                
                VStack(spacing: 5){
                    Text("A2")
                    Text("A3")
                }
                Spacer()
                Text("B2*3")
            }
            
            .padding()
            .background(Color.teal)
            Spacer()
            Text("A4")
           
        }
        
    }
}

#Preview {
    CeldasView()
}
