//
//  SwiftUIReservation.swift
//  OrfeasHotelKomotini
//
//  Created by Angelos Staboulis on 6/8/23.
//

import SwiftUI

struct SwiftUIReservation: View {
    @State var reservation:ReservationModel
    var body: some View {
        ScrollView{
            VStack{
                
                Image(uiImage: UIImage(named: "hotel")!).resizable().frame(width: UIScreen.main.bounds.width - 30, height: 100, alignment: .top)
                Image(uiImage: UIImage(named: "accomo1")!).resizable().frame(width: 452, height: 301, alignment: .top)
                TextField("Name", text:$reservation.name).background {
                    RoundedRectangle(cornerRadius: 22).frame(width: 300, height: 50, alignment: .top)
                        .foregroundColor(.orange)
                }.frame(width: 300, height: 50, alignment: .top).padding(10.0)
                TextField("Email", text:$reservation.email).background {
                    RoundedRectangle(cornerRadius: 22).frame(width: 300, height: 50, alignment: .top)
                        .foregroundColor(.orange)
                }.frame(width: 300, height: 50, alignment: .top).padding(10.0)
                TextField("Phone", text:$reservation.phone).background {
                    RoundedRectangle(cornerRadius: 22).frame(width: 300, height: 50, alignment: .top)
                        .foregroundColor(.orange)
                }.frame(width: 300, height: 50, alignment: .top).padding(10.0)
                TextField("Message", text: $reservation.message).background {
                    RoundedRectangle(cornerRadius: 22).frame(width: 300, height: 50, alignment: .top)
                        .foregroundColor(.orange)
                }.frame(width: 300, height: 50, alignment: .top).padding(10.0)
                TextField("Arrival", text:$reservation.arrival).background {
                    RoundedRectangle(cornerRadius: 22).frame(width: 300, height: 50, alignment: .top)
                        .foregroundColor(.orange)
                }.frame(width: 300, height: 50, alignment: .top).padding(10.0)
                TextField("Departure", text:$reservation.departure).background {
                    RoundedRectangle(cornerRadius: 22).frame(width: 300, height: 50, alignment: .top)
                        .foregroundColor(.orange)
                }.frame(width: 300, height: 50, alignment: .top).padding(10.0)
                
                
                VStack{
                    Picker(selection: $reservation.adults,
                           label: Text("Adults"),
                           content: {
                        Text("Adults")
                        Text("9").tag(9)
                        Text("8").tag(8)
                        Text("7").tag(7)
                        Text("6").tag(6)
                        Text("5").tag(5)
                        Text("4").tag(4)
                        Text("3").tag(3)
                        Text("2").tag(2)
                        Text("1").tag(1)
                    })
                        .pickerStyle(MenuPickerStyle())
                        .background {
                            RoundedRectangle(cornerRadius: 22).frame(width: 300, height: 50, alignment: .top)
                                .foregroundColor(.orange)
                        }.frame(width: 300, height: 50, alignment: .top).padding(10.0)
                }
                VStack{
                    Picker(selection: $reservation.children,
                           label: Text("Children"),
                           content: {
                        Text("Children")
                        Text("9").tag(9)
                        Text("8").tag(8)
                        Text("7").tag(7)
                        Text("6").tag(6)
                        Text("5").tag(5)
                        Text("4").tag(4)
                        Text("3").tag(3)
                        Text("2").tag(2)
                        Text("1").tag(1)
                    }
                           
                    )
                        .pickerStyle(MenuPickerStyle())
                        .background {
                            RoundedRectangle(cornerRadius: 22).frame(width: 300, height: 50, alignment: .top)
                                .foregroundColor(.orange)
                        }.frame(width: 300, height: 50, alignment: .top).padding(10.0)
                }
                
    
            }
            
            HStack{
                Button {
                    Reservation.shared.saveReservation(model: reservation)
                } label: {
                    Text("Submit")
                }.background {
                    RoundedRectangle(cornerRadius: 22.0).frame(width: 300, height: 50.0, alignment: .center)
                        .foregroundColor(Color.orange)
                }
            }.padding(30.0)
        }.frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height - 180, alignment: .top)
            .background(Color.init(red: 179/255, green: 161/255, blue: 94/255))
    }
}


