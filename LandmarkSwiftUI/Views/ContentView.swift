//
//  ContentView.swift
//  LandmarkSwiftUI
//
//  Created by Vikas on 19/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData()) // Use .environmentObject for injecting the environment object
    }
}
