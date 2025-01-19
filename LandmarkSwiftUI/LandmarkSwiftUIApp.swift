//
//  LandmarkSwiftUIApp.swift
//  LandmarkSwiftUI
//
//  Created by Vikas on 19/01/25.
//

import SwiftUI

@main
struct LandmarkSwiftUIApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
