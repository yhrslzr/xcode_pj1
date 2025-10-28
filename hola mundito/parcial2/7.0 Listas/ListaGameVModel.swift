//
//  ListaGameVModel.swift
//  hola mundito
//
//  Created by WIN603 on 15/10/25.
//

import Foundation

struct GamesViewModel {
    func getGamesList() -> [Game] {
        var games: [Game] = [
            Game(id: 1, image: "l1brothership", name: "Mario & Luigi: Brothership", console: "Nintendo Switch", price: 1600.00),
            Game(id: 2, image: "l2pla", name: "Pokémon Legends: Arceus", console: "Nintendo Switch", price: 1600.00),
            Game(id: 3, image: "l3patapon", name: "Patapon 1+2 Replay", console: "Multi-platform", price: 490.00),
            Game(id: 4, image: "l4tboir", name: "The Binding of Isaac: Repentance +", console: "Multi-platform", price: 500.00),
            Game(id: 5, image: "l5katfl", name: "Kirby and the Forgotten Land + Star-Crossed World", console: "Nintendo Switch", price: 2000.00),
            Game(id: 6, image: "l6sackboy", name: "Sackboy: A Big Adventure", console: "PS4/PS5", price: 1400.00)
        ]
        
        for x in 6 ... 500 {
            games.append(Game(id: x, image: "l5katfl", name: "Juego #\(x)", console: "Plataforma...", price: 0.00))
        }
        
        return games
    }
}

