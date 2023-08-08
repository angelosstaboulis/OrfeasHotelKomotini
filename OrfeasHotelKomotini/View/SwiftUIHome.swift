//
//  SwiftUIHome.swift
//  OrfeasHotelKomotini
//
//  Created by Angelos Staboulis on 6/8/23.
//

import SwiftUI

struct SwiftUIHome: View {
    var menuItems = ["Gallery","Contact"]
    init() {
        UITableView.appearance().backgroundColor = .init(Color.init(red: 179/255, green: 161/255, blue: 94/255))
    }
    var body: some View {
        VStack{
            Image(uiImage: UIImage(named: "hotel")!).resizable().frame(width: UIScreen.main.bounds.width - 30, height: 100, alignment: .top)
            Image(uiImage: UIImage(named: "orfeas1")!).resizable().frame(width: 452, height: 301, alignment: .top)
            List(menuItems,id:\.self){ item in
                HStack{
                    NavigationLink {
                        if item.contains("Gallery"){
                            SwiftUIGallery()
                        }else{
                            SwiftUIContacts()
                        }
                    } label: {
                        Text(item)
                    }
                }.listRowBackground(Color.init(red: 179/255, green: 161/255, blue: 94/255))
            }
        }.frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height - 180, alignment: .top)
            .background(Color.init(red: 179/255, green: 161/255, blue: 94/255))
    }
}

struct SwiftUIHome_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIHome()
    }
}
