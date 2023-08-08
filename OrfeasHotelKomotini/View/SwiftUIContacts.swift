//
//  SwiftUIContacts.swift
//  OrfeasHotelKomotini
//
//  Created by Angelos Staboulis on 7/8/23.
//

import SwiftUI
import Parse
struct SwiftUIContacts: View {
    @State var modelContact = ContactModel(name: "", email: "", message: "")
    var body: some View {
        VStack{
            Image(uiImage: UIImage(named: "hotel")!).resizable().frame(width: UIScreen.main.bounds.width - 30, height: 100, alignment: .top)
            Image(uiImage: UIImage(named: "orfeas1")!).resizable().frame(width: 452, height: 301, alignment: .top)

            TextField("Name", text: $modelContact.name).background {
                RoundedRectangle(cornerRadius: 22).frame(width: 300, height: 60, alignment: .top)
                    .foregroundColor(.orange)
            }.padding(30.0).frame(width: 300, height: 60, alignment: .top)
            TextField("Email", text: $modelContact.email).background {
                RoundedRectangle(cornerRadius: 22).frame(width: 300, height: 60, alignment: .top)
                    .foregroundColor(.orange)
            }.padding(30.0).frame(width: 300, height: 60, alignment: .top)
            TextField("Message", text:$modelContact.message).background {
                RoundedRectangle(cornerRadius: 22).frame(width: 300, height: 60, alignment: .top)
                    .foregroundColor(.orange)
            }.padding(30.0).frame(width: 300, height: 60, alignment: .top)
            
            HStack{
                Button {
                            Contact.shared.saveContact(model: modelContact)
                } label: {
                    Text("Submit")
                }.background {
                    RoundedRectangle(cornerRadius: 22.0).frame(width: 300, height: 50.0, alignment: .center)
                        .foregroundColor(Color.orange)
                }
            }.padding(30.0)
        }.frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height - 150, alignment: .top)
            .background(Color.init(red: 179/255, green: 161/255, blue: 94/255))
      }
}


