//
//  SwiftUIFacilities.swift
//  OrfeasHotelKomotini
//
//  Created by Angelos Staboulis on 6/8/23.
//

import SwiftUI

struct SwiftUIFacilities: View {
    var menuItems = ["Hotel","Restaurant"]
    @State var selected:Int!=0
    var body: some View {
            VStack{
                Image(uiImage: UIImage(named: "hotel")!).resizable().frame(width: UIScreen.main.bounds.width - 30, height: 100, alignment: .top)
                Image(uiImage: UIImage(named: "accomo1")!).resizable().frame(width: 452, height: 301, alignment: .top)
                List(menuItems,id:\.self){ item in
                    NavigationLink {
                        if item.contains("Hotel"){
                            SwiftUIHotel()
                        }else{
                            SwiftUIRestaurant()
                        }
                    } label: {
                        Text(item)
                    }.listRowBackground(Color.init(red: 179/255, green: 161/255, blue: 94/255))
                }
        }.frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height - 180, alignment: .top)
            .background(Color.init(red: 179/255, green: 161/255, blue: 94/255))
    }
}

