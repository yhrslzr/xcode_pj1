//
//  ListaContentView.swift
//  hola mundito
//
//  Created by WIN603 on 15/10/25.
//

import SwiftUI

struct ListaContentView: View {
    
    let gameVM: GamesViewModel = GamesViewModel()
    
    var body: some View {
        VStack{
            List{
                ForEach(gameVM.getGamesList()){
                    game in ListaCardView(image: game.image, name: game.name, console: game.console, price: String(game.price))
                }
            }
        }
        .padding(.trailing)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(20)
        
    }
}

#Preview {
    ListaContentView()
}
