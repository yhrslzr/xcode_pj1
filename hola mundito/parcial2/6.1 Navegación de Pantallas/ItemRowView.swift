//
//  ItemRowView.swift
//  navegacion
//
//  Created by Yahir Salazar on 29/09/25.
//

import SwiftUI

struct ItemRowView: View {
    var body: some View {
        HStack {
            Image("macbookpro")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            
            VStack(alignment: .leading){
                Text("Macbook Pro").font(.title)
                Text("$31,899").fontWeight(.semibold).font(.body)
            }
        }
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView()
    }
}
