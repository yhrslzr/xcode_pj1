//
//  VMBView.swift
//  Oreo
//
//  Created by WIN603 on 19/09/25.
//

import SwiftUI

struct VMBView: View {
    
    @State var pressed: Bool = false
    @State var cardSelect: Int = -1
    @State var destino: String = ""
    
    var body: some View {
        
        ScrollView{
            
            Text("content view \(cardSelect)")
            
            TextField("¿A dónde quieres viajar?", text: $destino)
                .disableAutocorrection(true)
                .autocapitalization(.words)
            
            Text ("Viajarás a \(destino)")
            
            ScrollView(.horizontal){
                HStack(){
                    TransportView(pressed: $pressed, name: "Avión", icon: "airplane", index: 0, selectedIndex: $cardSelect)
                    TransportView(pressed: $pressed, name: "Barco", icon: "sailboat", index: 1, selectedIndex: $cardSelect)
                    TransportView(pressed: $pressed, name: "Tren" , icon: "tram", index: 2, selectedIndex: $cardSelect)
                    TransportView(pressed: $pressed, name: "Bus", icon: "bus", index: 3, selectedIndex: $cardSelect)
                    TransportView(pressed: $pressed, name: "Ferry", icon: "ferry.fill", index: 4, selectedIndex: $cardSelect)
                    TransportView(pressed: $pressed, name: "Medio de transporte", icon: "car", index: 5, selectedIndex: $cardSelect)
                }
            }
            
            ScrollView(.vertical){
                TrainCardView(name: "Tren Bala Kodama", iconColor: Color.yellow)
                TrainCardView(name: "Tren Bala Nozomi", iconColor: Color.green)
                TrainCardView(name: "Tren Motora Ruidosa", iconColor: Color.blue)
                TrainCardView(name: "Tren Bala Wanya", iconColor: Color.orange)
                TrainCardView(name: "Tren Bala Osaka", iconColor: Color.black)
                TrainCardView(name: "JR Yamanote", iconColor: Color.teal)
                TrainCardView(name: "JR Chuou", iconColor: Color.pink)
                TrainCardView(name: "Sanyou Line", iconColor: Color.indigo)
                TrainCardView(name: "Super Line Takamatsu", iconColor: Color.purple)
                TrainCardView(name: "FujiSubaru Line", iconColor: Color.mint)
            }
        }
        
    }
}

#Preview {
    VMBView()
}
