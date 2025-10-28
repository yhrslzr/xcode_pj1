//
//  ListasView.swift
//  hola mundito
//
//  Created by WIN603 on 15/10/25.
//

import SwiftUI

struct ListaCardView: View {
    var image : String
    var name : String
    var console : String
    var price : String
    
    var body: some View {
        HStack {
            
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 100)
                .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 0 ){
                Text(name)
                    .foregroundColor(Color.teal)
                    .font(.headline)
                    .padding(.bottom)
                HStack{
                    Text(console)
                        .font(.caption)
                    Spacer()
                    Text(price + " MXN")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                HStack(){
                    Spacer()
                    Button(action: {
                        print("Has adquirido \(name)")
                    },
                           label:{
                        Text("Comprar")
                            .padding(.horizontal)
                            .foregroundColor(Color.white)
                            .background(Color.teal)
                            .cornerRadius(4)
                            .padding(.vertical)
                    })
                }
            }
        }.onAppear(){
            print("\(name)")
        }
    }
}

struct ListaCardView_Previews: PreviewProvider {
    static var previews: some View {
        ListaCardView(image: "mario", name: "Mario Bros.", console: "Nintendo Switch", price: "1200.00")
    }
}
