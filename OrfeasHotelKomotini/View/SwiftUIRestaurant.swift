//
//  SwiftUIRestaurant.swift
//  OrfeasHotelKomotini
//
//  Created by Angelos Staboulis on 7/8/23.
//

import SwiftUI

struct SwiftUIRestaurant: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                Image(uiImage: UIImage(named: "estiatorio")!).resizable()
                Image(uiImage: UIImage(named: "estiatorio1")!).resizable()
                Image(uiImage: UIImage(named: "estiatorio2")!).resizable()
                Image(uiImage: UIImage(named: "estiatorio3")!).resizable()
            }
         
        }.navigationBarTitle("Orfeas Hotel Komotini", displayMode: .inline)
    }
}

