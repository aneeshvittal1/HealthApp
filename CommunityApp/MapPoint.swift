//
//  MapPoint.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/24/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct MapPoint: Hashable, Codable, Identifiable{
    var id = UUID()
    var name: String
    var type: String
    var address: String
    
    private var sfIcon: String
    private var coords: Coordinates
    
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coords.latitude, longitude: coords.longitude)
    }
    
    var icon: Image {
        Image(systemName: sfIcon)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
