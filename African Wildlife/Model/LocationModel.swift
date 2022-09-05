//
//  LocationModel.swift
//  African Wildlife
//
//  Created by Hussain Alwazzan on 05/09/2022.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
var id: String
var name: String
var image: String
var latitude: Double
var longitude: Double
    
    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
