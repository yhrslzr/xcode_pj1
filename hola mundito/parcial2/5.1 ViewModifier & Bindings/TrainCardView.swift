//
//  TrainCardView.swift
//  Oreo
//
//  Created by WIN603 on 19/09/25.
//

import SwiftUI

struct TrainCardView: View {
    var name: String
    var iconColor: Color
    
    var body: some View {
        VStack(){
            HStack(){
                Spacer()
                Text("Oferta")
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .background(iconColor)
                    .foregroundColor(.white)
                    .cornerRadius(2)
                    .frame( maxWidth: .infinity, alignment: .trailing)
            }
            
            Image(systemName: "tram.circle.fill")
                .font(.system(size: 90, weight: .light, design: .default))
                .foregroundColor(iconColor)
                .aspectRatio(contentMode: .fit )
                .frame(width: 120, height: 100)
            
            Text(name)
                .font(.largeTitle)
                .lineLimit(1)
                .truncationMode(.middle)
                .padding(.bottom)
                .frame( maxWidth: .infinity)
        }
        .modifier(CardViewModifier())
    }
}

#Preview {
    TrainCardView(name: "Tren de Prueba", iconColor: Color.red)
}
