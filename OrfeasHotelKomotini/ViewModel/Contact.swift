//
//  Contact.swift
//  OrfeasHotelKomotini
//
//  Created by Angelos Staboulis on 7/8/23.
//

import Foundation
import Parse
class Contact{
    static let shared = Contact()
    private init(){}
    func saveContact(model:ContactModel){
        DispatchQueue.main.async {
            let pObject=PFObject(className: "ContactUs")
            pObject["Name"] = model.name
            pObject["Email"] = model.email
            pObject["Message"] = model.message
            pObject.saveInBackground()
        }
           

    }
}
