//
//  SwiftUIHotel.swift
//  OrfeasHotelKomotini
//
//  Created by Angelos Staboulis on 7/8/23.
//

import SwiftUI

struct SwiftUIHotel: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                Image(uiImage: UIImage(named: "orfeas01")!).resizable()
                Image(uiImage: UIImage(named: "orfeas03")!).resizable()
                Image(uiImage: UIImage(named: "orfeas04")!).resizable()
                Image(uiImage: UIImage(named: "orfeas10")!).resizable()
                Image(uiImage: UIImage(named: "orfeas11")!).resizable()
            }
         
        }.navigationBarTitle("Orfeas Hotel Komotini", displayMode: .inline)
    }
}


