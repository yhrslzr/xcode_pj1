//
//  FixedGridView.swift
//  hola mundito
//
//  Created by Yahir Salazar on 27/10/25.
//

import SwiftUI

struct FixedGridView: View {
    
    let gameVM: GamesViewModel = GamesViewModel()
    
    // 2 columnas
    let columns = [
        GridItem(.fixed(150)),
        GridItem(.fixed(50))
    ]
    
    var body: some View {
        
    }
}

#Preview {
    FixedGridView()
}
