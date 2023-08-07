//
//  SwiftUIAccomodation.swift
//  OrfeasHotelKomotini
//
//  Created by Angelos Staboulis on 6/8/23.
//

import SwiftUI

struct SwiftUIAccomodation: View {
    var message =
    """
Our hotel has 78 rooms in total, 66 double rooms – with the possibility to accommodate one extra person – 9 single rooms and 3 two-space rooms – with the possibility to accommodate 4 to 6 people.

    40% of the rooms have been fully renovated in May 2010.

    All rooms have:

WC
LCD TV
Refrigerator
Air condition
Hair dryer
Balcony (some of the rooms overlook the central square of Komotini)
Rooms    Prices
Single room    35 €
Double room    45 €
Triple room    55 €
Continental breakfast (optional) + 5€ per person

Special prices, depending on the season

Also, special prices are available for travel agencies and in cases of group reservations
"""
    var body: some View {
        ScrollView{
            VStack{
                Image(uiImage: UIImage(named: "hotel")!).resizable().frame(width: UIScreen.main.bounds.width - 30, height: 100, alignment: .top)
                Image(uiImage: UIImage(named: "accomo1")!).resizable().frame(width: UIScreen.main.bounds.width - 30, height: 100, alignment: .top)
                Text(message).frame(width: UIScreen.main.bounds.width - 30, height: 600, alignment: .leading)
                ScrollView(.horizontal){
                    HStack{
                        Image(uiImage: UIImage(named: "accomo1")!).resizable().frame(width: 180, height: 180, alignment: .center)
                        Image(uiImage: UIImage(named: "accomo2")!).resizable().frame(width: 180, height: 180, alignment: .center)
                        Image(uiImage: UIImage(named: "accomo3")!).resizable().frame(width: 180, height: 180, alignment: .center)
                        Image(uiImage: UIImage(named: "accomo4")!).resizable().frame(width: 180, height: 180, alignment: .center)
                        Image(uiImage: UIImage(named: "accomo1")!).resizable().frame(width: 180, height: 180, alignment: .center)
                    }
                 
                }.navigationBarTitle("Orfeas Hotel Komotini", displayMode: .inline)
            }
            
        }.frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height - 180, alignment: .top)
            .background(Color.init(red: 179/255, green: 161/255, blue: 94/255))

    }
}

struct SwiftUIAccomodation_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAccomodation()
    }
}
