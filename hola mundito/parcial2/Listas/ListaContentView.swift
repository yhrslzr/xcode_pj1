//
//  ListaContentView.swift
//  hola mundito
//
//  Created by WIN603 on 15/10/25.
//

import SwiftUI

struct ListaContentView: View {
    
    // let gameVM: GamesViewModel = GamesViewModel()
    @State var gameVM: [Game] = GamesViewModel().getGamesList()
    
    
    var body: some View {
        VStack{
            List {
                ForEach(gameVM, id: \.uuid)
                { game in
                    ListaCardView(image: game.image, name: game.name, console: game.console, price: String(game.price))
                        .padding(.trailing)
                        .background(Color("cardColor"))
                        .cornerRadius(15)
                        .padding(4)
                        .listRowInsets(EdgeInsets())
                }.onDelete{ (indexSet) in
                    self.gameVM.remove(atOffsets: indexSet)
                    
                }
            }.listStyle(PlainListStyle())
        }
        .padding(.trailing)
        
    }
}

#Preview {
    ListaContentView()
}
