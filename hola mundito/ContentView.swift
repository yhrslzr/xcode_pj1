//
//  ContentView.swift
//  hola mundito
//
//  Created by WIN603 on 04/08/25.
//

import SwiftUI

struct ContentView: View {
    
    /*  lógica y variables  */
    
    var body: some View {
        /*  ui  */
        Text("Hola Mundito :3 Bienvenid@ a SwiftUI")
            //.font(.largeTitle) // cambia la forma de la fuente (dependiendo de la opción escrita)
            //.font(.subheadline)
            //.font(.system(size:36))
            //.fontWeight(.ultraLight)
            //.padding(.top, 64) // le agrega padding al ".top"
            //.font(.title)
            .multilineTextAlignment(.center) //alinea el texto (trailing, leading, center)
            .font(.system(size: 36,
                          weight: .bold,
                          design: .rounded))
            .foregroundStyle(.mint)
            .lineLimit(2)
            .padding()
            //.frame(maxWidth: .infinity, maxHeight: .infinity) //"nil" = nulo
            .background(Color.accentColor)
            .padding(.top)
            .background(Color.pink)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(color: Color.accentColor, radius: 40, y:35)
            //.rotation3DEffect(.degrees(45), axis: (x:1,y:0,z:0))
            .rotationEffect(.degrees(180))
            .opacity(0.9)
            .blur(radius: 0.5)
            .offset(x:124, y: -124)
            //.scaleEffect(2)
        
            
    }
}

#Preview {
    ContentView()
}


