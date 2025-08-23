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

struct SwiftUIView: View {
    var body: some View {
        VStack{
            // Fila 1 (Amarillo en verde, Azul en rojo y Naranja en Azul)
            HStack{
                Text("Amarillo").foregroundStyle(.green)
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    SwiftUIView()
}
