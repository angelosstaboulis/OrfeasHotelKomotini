//
//  Reservation.swift
//  OrfeasHotelKomotini
//
//  Created by Angelos Staboulis on 7/8/23.
//

import Foundation
import Parse
class Reservation{
    static let shared = Reservation()
    private init(){}
    func saveReservation(model:ReservationModel){
        DispatchQueue.main.async {
            let pObject=PFObject(className: "Resevation")
            pObject["Name"] = model.name
            pObject["Email"] = model.email
            pObject["Message"] = model.message
            pObject["Phone"] = model.phone
            pObject["Arrival"] = model.arrival
            pObject["Departure"] = model.departure
            pObject["Adults"] = model.adults
            pObject["Children"] = model.children
            pObject.saveInBackground()
        }
           

    }
}
