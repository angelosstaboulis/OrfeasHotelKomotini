//
//  ContentView.swift
//  OrfeasHotelKomotini
//
//  Created by Angelos Staboulis on 6/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            TabView(){
                SwiftUIHome().tabItem {
                    Image("home")
                    Text("Home")
                }
                SwiftUIAccomodation().tabItem {
                    Image("accomodation")
                    Text("Accomodation")
                }
                SwiftUIFacilities(selected: 0).tabItem {
                    Image("facilities")
                    Text("Facilities")
                }
                SwiftUIReservation(reservation: ReservationModel(name: "", email: "", phone:"", message: "", adults: 0, children: 0, arrival: "", departure: "")).tabItem {
                    Image("reception")
                    Text("Reservation")
                }
            }.navigationBarTitle("Orfeas Hotel Komotini", displayMode: .inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
