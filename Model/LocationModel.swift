//
//  LocationModel.swift
//  AfricaAppSwiftUI
//
//  Created by Bertuğ Horoz on 24.11.2022.
//

import Foundation
import MapKit

struct NationalParkLocation : Codable, Identifiable {
    var id : String
    var name : String
    var image: String
    var latitude : Double
    var longitude : Double
    var location : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
