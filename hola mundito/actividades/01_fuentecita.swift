//
//  fuentecita.swift
//  hola mundito
//
//  Created by WIN603 on 15/08/25.
//

import SwiftUI

let swtitle: String = String(localized: "swtitle")

let swtext1: String = String(localized: "swtext1")

struct FuentecitaView: View {
    var body: some View {
        VStack(){
            VStack(alignment: .center){
                Text(swtitle).multilineTextAlignment(.center)
            }
            
            VStack(alignment: .leading){
                Text(swtext1)
                    .rotation3DEffect(.degrees(45), axis: (x:1,y:0,z:0))
                    .padding()
            }
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black, ignoresSafeAreaEdges:.bottom)
            .font(.custom("starjedi",size: 15))
                .foregroundStyle(.yellow)
                .multilineTextAlignment(.leading)
    }
}

#Preview {
    FuentecitaView()
}


