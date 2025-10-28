//
//  ListaGame.swift
//  hola mundito
//
//  Created by WIN603 on 15/10/25.
//

import Foundation
struct Game: Identifiable{
    
    let id: Int
    let uuid: UUID = UUID() // valor ID único-universal
    let image: String
    let name: String
    let console: String
    let price: Float
}

