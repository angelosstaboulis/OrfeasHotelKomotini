//
//  SwiftUIGallery.swift
//  OrfeasHotelKomotini
//
//  Created by Angelos Staboulis on 7/8/23.
//

import SwiftUI

struct SwiftUIGallery: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                Image(uiImage: UIImage(named: "orfeas01")!).resizable()
                Image(uiImage: UIImage(named: "orfeas02")!).resizable()
                Image(uiImage: UIImage(named: "orfeas03")!).resizable()
                Image(uiImage: UIImage(named: "orfeas04")!).resizable()
                Image(uiImage: UIImage(named: "orfeas05")!).resizable()
                Image(uiImage: UIImage(named: "orfeas06")!).resizable()
                Image(uiImage: UIImage(named: "orfeas07")!).resizable()
                Image(uiImage: UIImage(named: "orfeas08")!).resizable()
                Image(uiImage: UIImage(named: "orfeas09")!).resizable()
                Image(uiImage: UIImage(named: "orfeas10")!).resizable()
            }
         
        }.navigationBarTitle("Orfeas Hotel Komotini", displayMode: .inline)
    }
}

