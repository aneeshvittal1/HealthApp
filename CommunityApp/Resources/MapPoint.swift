//
//  MapPoint.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 1/12/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Pin: Identifiable{
    let id = UUID()
    let name: String
    let type: String
    let icon: String
    let coordinate: CLLocationCoordinate2D
}

class Points{
    private var commCenters = [
        Pin(name: "Bailey's Community Center", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.842853480085374, longitude: -77.13600114974851)) ,
        
        Pin(name: "Burgundy Village Community Center", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.80078022179042, longitude: -77.0926132584113)) ,
        
        Pin(name: "Cathy Hudgins Community Center at Southgate", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.94183489311046, longitude: -77.36567469124527)) ,
        
        Pin(name: "David R. Pinn Community Center", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.806925751910235, longitude: -77.29932354491639)) ,
        
        Pin(name: "Gum Springs Community Center", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.738781541551745, longitude: -77.08383277532874)) ,
        
        Pin(name: "Huntington Community Center", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.79464926230713, longitude: -77.06855769818696)) ,
        
        Pin(name: "Hybla Valley Community Center", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.742092847779254, longitude: -77.09131813384438)) ,
        
        Pin(name: "James Lee Community Center & Theater", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.874113913450095, longitude: -77.17412743203242)) ,
        
        Pin(name: "Lorton Community Center ", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.69860088628804, longitude: -77.21361413203749)) ,
        
        Pin(name: "Mott Community Center", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.82911129087137, longitude: -77.36387662958286)) ,
        
        Pin(name: "Providence Community Center", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.87320716925038, longitude: -77.27205581321039)) ,
        
        Pin(name: "Sully Community Center", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.91856754642044, longitude: -77.42271451193915)) ,
        
        Pin(name: "Willston Multicultural Center", type: "Comm", icon:"figure.2.and.child.holdinghands", coordinate: CLLocationCoordinate2D(latitude: 38.87044550416827, longitude: -77.14880792256949)) ,
    ]
    
    private var vaccCenters = [
        Pin(name: "Vaccine Center 1", type: "Vacc", icon:"syringe", coordinate: CLLocationCoordinate2D(latitude: 38.945019091178324, longitude: -79.02855167198409))
    ]
    
    private var testCenters = [
        Pin(name: "Test Site 1", type: "Test", icon:"cross.circle.fill", coordinate: CLLocationCoordinate2D(latitude: 38.84161429312895, longitude: -77.39507698417412))
    ]
    
    
    private var shelterCenters = [
        Pin(name: "Katherine K. Hanley Family Shelter", type: "Shelter", icon: "house.and.flag.fill", coordinate: CLLocationCoordinate2D(latitude: 38.84161429312895, longitude: -77.39507698417412)),
        
        Pin(name: "Embry Rucker Community Shelter ", type: "Shelter", icon: "house.and.flag.fill", coordinate: CLLocationCoordinate2D(latitude: 38.96160185965853, longitude: -77.35944592898608)),
        
        Pin(name: "Patrick Henry Family Shelter", type: "Shelter",  icon: "house.and.flag.fill", coordinate: CLLocationCoordinate2D(latitude: 38.86621838857817, longitude: -77.15042961484993)),
        
        Pin(name: "Next Steps Family Program", type: "Shelter", icon: "house.and.flag.fill", coordinate: CLLocationCoordinate2D(latitude: 38.721301733431346, longitude: -77.12734608027671)),
        
        Pin(name: "Bailey’s Crossroads Community Shelter", type: "Shelter", icon: "house.and.flag.fill", coordinate: CLLocationCoordinate2D(latitude:  38.84910263470641, longitude: -77.12908711017678)),
        
        Pin(name: "Eleanor U. Kennedy Shelter", type: "Shelter", icon: "house.and.flag.fill", coordinate: CLLocationCoordinate2D(latitude: 38.70791026989636, longitude: -77.159656563662)),
    ]
    
    var allPoints = [Pin]()
    var myLoc = [Pin]()
    
    private var locManage = LocationManager()
    
    init(){
        self.myLoc = [Pin(name: "MyLocation", type: "myLoc", icon: "circle", coordinate: locManage.region.center)]
        self.allPoints = self.vaccCenters+self.commCenters+self.shelterCenters+self.testCenters+self.myLoc
        
    }
//    vaccCenters+commCenters+shelterCenters+testCenters
}


