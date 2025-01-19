//
//  Landmark.swift
//  BuildingListsAndNavigation
//
//  Created by Vikas on 18/01/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    // reads the name of the image from the data. Marked private because you’ll use it only to create a public computed property in the next step.
    private var imageName: String
    
    //A computed image property that loads an image from the assest catalog.
    var image: Image {
        Image(imageName)
    }
    
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
