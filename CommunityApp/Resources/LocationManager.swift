//
//  LocationManager.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/28/22.
//

import Foundation
import CoreLocation
import MapKit

final class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate{
    
    @Published var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 38.845861, longitude: -77.306246), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
    
    @Published var curCoordinate = CLLocationCoordinate2D(latitude: 38.845861, longitude: -77.306246)
    
    var locManager: CLLocationManager?
    
    func checkIfLocationServiceEnabled(){
        if CLLocationManager.locationServicesEnabled(){
            locManager = CLLocationManager()
            locManager!.delegate = self
        }
        else{
            print("turn on location services")
        }
    }
    
    private func checkLocationAuth(){
        guard let locManager = locManager else { return }
        
        switch locManager.authorizationStatus {
            
        case .notDetermined:
            locManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Your location is restricted")
        case .denied:
            print("Please enable location serivces")
        case .authorizedAlways:
            curCoordinate = locManager.location!.coordinate
            region = MKCoordinateRegion(center: locManager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
        case .authorizedWhenInUse:
            curCoordinate = locManager.location!.coordinate
            region = MKCoordinateRegion(center: locManager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
        @unknown default:
            break
        }
            
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuth()
    }
}
