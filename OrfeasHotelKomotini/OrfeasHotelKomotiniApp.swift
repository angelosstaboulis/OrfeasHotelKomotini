//
//  OrfeasHotelKomotiniApp.swift
//  OrfeasHotelKomotini
//
//  Created by Angelos Staboulis on 6/8/23.
//

import SwiftUI
import Parse
@main
struct OrfeasHotelKomotiniApp: App {
    init() {
        let configuration = ParseClientConfiguration {
            $0.applicationId = "doXuUPGU6EPRxgfIDHX5vXte7WX8Axn5BSTnC2HT"
            $0.clientKey = "BiP7ljRmtmd3E9uop3VuU7D7LoZkVGjp5s2FEJcY"
            $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: configuration)

    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
