//
//  OnTimeHomePageApp.swift
//  OnTimeHomePage
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

@main
struct OnTimeHomePageApp: App {
    var body: some Scene {
        WindowGroup {
                let dateHolder = DateHolder()
                ContentView()
                .environmentObject(dateHolder)
        }
    }
}
