//
//  SwiftUIView.swift
//  hola mundito
//
//  Created by WIN603 on 22/08/25.
//

/*Se debe respetar los espacios tanto internos como externos , así separación del borde de la pantalla. Algunos detalles son:
 
 Fila 1 ? Los textos estar centrados horizontalmente
 Fila 2 ? Ambos textos usen el 50% del ancho. (Seleccione el elemento para conocer hasta donde llega el Text)
  
 Icono

 Descripción generada automáticamente con confianza mediaImagen que contiene Interfaz de usuario gráfica

 Descripción generada automáticamente
  
 El texto ?ROJO? solo se separa de su fondo a lo horizontal pero no en vertical, mientras que negro es en ambos lados.
  
 Fila 3 ? Texto ?Verde? letras blancas y fondo naranja usen todo el ancho de la pantalla, si tocará los márgenes de la pantalla
  
 Fila 4 -
 Texto con degradado y borde de ancho 2 o más. Tendrá padding en todos lados excepto arriba
  
 Fila 5- Tenga una sombra.
  
 Fila 6- Texto en la posición inferior derecha sin tocar los márgenes de la pantalla.
  
  
  
 Código de algunos modificadores:
  
 Subrayado es con .underline()
  
 En swiftt se puede cambiar todo un string a mayusculas con .uppercased() ejemplo:
 let rojo: String = "Rojo".uppercased()
                 Resultado -> ?ROJO?
  
 Para el degradado usar: LinearGradient dentro del background
  
 LinearGradient(gradient: Gradient(colors: [ AQUÍ_TU_ARREGLO_DE_COLORES   ]), startPoint: .topLeading, endPoint: .bottomTrailing)
  
 .border puede tener ancho y/o color */

import SwiftUI

struct TextitoView: View {
    var body: some View {
        VStack{
            // Fila 1 (Amarillo en verde, Azul en rojo y Naranja en Azul)
            HStack{
                Text("Amarillo").foregroundStyle(.green)
                Text("Azul").foregroundStyle(.red)
                Text("Naranja").foregroundStyle(.blue)
            }
            // fila 2: Negro, rojo
            HStack{
                Text("NEGRO")
                    .padding()
                    .background(Color.purple)
                    .clipShape(Rectangle())
                    .frame(maxWidth: .infinity)
                
                Text("rojo".uppercased())
                    .padding([.leading, .trailing], 18)
                    .foregroundStyle(.red)
                    .background(Color.cyan)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .frame(maxWidth: .infinity)
            }
            .multilineTextAlignment(.center)
            
            // fila 3: verde
            HStack{
                Text("Verde")
                    .padding()
                    .font(.system(size: 22, weight: .bold))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }
            
            // fila 4: morado
            HStack(){
                Text("Morado")
                    .padding()
                    .font(.system(size: 30))
                    .clipShape(Rectangle())
                    .background(LinearGradient(gradient: Gradient(colors: [.green, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .border(Color.purple, width: 3)
            }
            
            // fila 5:
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    TextitoView()
}
