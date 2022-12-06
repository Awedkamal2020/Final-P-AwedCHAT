//
//  cisc_225_awedchatApp.swift
//  cisc_225_awedchat
//
//  Created by Awet Hussen on 11/30/22.
//

import SwiftUI
import Firebase

@main
struct cisc_225_awedchatApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
