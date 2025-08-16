//
//  fuentecita.swift
//  hola mundito
//
//  Created by WIN603 on 15/08/25.
//

import SwiftUI

struct FuentecitaView: View {
    
    var body: some View {
        VStack(){
            HStack(spacing: 32){
                
            }
                .frame(maxWidth: .infinity)
                .background(Color.gray)
    
            
        }
        
        VStack(){
            
            Text("B")
                .multilineTextAlignment(.center)
            .font(.custom("starjedi",size: 36))
                .foregroundStyle(.yellow)
            Text("a")
                .multilineTextAlignment(.center)
                .rotation3DEffect(.degrees(45), axis: (x:1,y:0,z:0))
                .font(.system(size: 36,
                              weight: .bold,
                              design: .rounded))
                .foregroundStyle(.yellow)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }.frame(height: .infinity)
            .background(Color.black, ignoresSafeAreaEdges:.bottom)
        
        
        
            
    }
}

#Preview {
    FuentecitaView()
}


