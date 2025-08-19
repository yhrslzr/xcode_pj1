//
//  fuentecita.swift
//  hola mundito
//
//  Created by WIN603 on 15/08/25.
//

import SwiftUI

let swtext1 = "EN UNA CONTUNDENTE JUGADA. EL DIABÓLICO LIDER DROIDE, EL GENERAL GRIEVOUS, HA IRRUMPIDO EN LA CAPITAL DE LA REPÚBLICA Y HA SECUESTRADO AL CANCILLER PALPATINE, LÍDER DEL SENADO GALÁCTICO.MIENTRAS EL EJÉRCITO DROIDE SEPARATISTA TRATA DE HUIR DE LA CAPITAL SITIADA CON SU VALIOSO REHEN, DOS CABALLEROS JEDI IDERAN UNA MISIÓN DESESPERADA IRA RESCATAR AL CANCILLER UTIVO...."

struct FuentecitaView: View {
    
    var body: some View {
     
        VStack(){
            
            Text("'EPISODIO III' LA VENGANZA DE 1N5-SHTH")
            Text(swtext1)
                .rotation3DEffect(.degrees(45), axis: (x:1,y:0,z:0))
                .padding()
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


