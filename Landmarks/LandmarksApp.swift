//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Caleb R on 12/14/20.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
