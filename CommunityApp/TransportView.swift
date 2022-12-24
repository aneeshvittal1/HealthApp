//
//  TransportView.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/23/22.
//

import SwiftUI
import MapKit



struct TransportView: View {
    
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 38.845861, longitude: -77.306246), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    struct Pin: Identifiable{
        let id = UUID()
        let name: String
        let coordinate: CLLocationCoordinate2D
    }
    
    let commCenters = [
        Pin(name: "Bailey's Community Center", coordinate: CLLocationCoordinate2D(latitude: 38.842853480085374, longitude: -77.13600114974851)) ,
        
        Pin(name: "Burgundy Village Community Center", coordinate: CLLocationCoordinate2D(latitude: 38.80078022179042, longitude: -77.0926132584113)) ,
        
        Pin(name: "Cathy Hudgins Community Center at Southgate", coordinate: CLLocationCoordinate2D(latitude: 38.94183489311046, longitude: -77.36567469124527)) ,
        
        Pin(name: "David R. Pinn Community Center", coordinate: CLLocationCoordinate2D(latitude: 38.806925751910235, longitude: -77.29932354491639)) ,
        
        Pin(name: "Gum Springs Community Center", coordinate: CLLocationCoordinate2D(latitude: 38.738781541551745, longitude: -77.08383277532874)) ,
        
        Pin(name: "Huntington Community Center", coordinate: CLLocationCoordinate2D(latitude: 38.79464926230713, longitude: -77.06855769818696)) ,
        
        Pin(name: "Hybla Valley Community Center", coordinate: CLLocationCoordinate2D(latitude: 38.742092847779254, longitude: -77.09131813384438)) ,
        
        Pin(name: "James Lee Community Center & Theater", coordinate: CLLocationCoordinate2D(latitude: 38.874113913450095, longitude: -77.17412743203242)) ,
        
        Pin(name: "Lorton Community Center ", coordinate: CLLocationCoordinate2D(latitude: 38.69860088628804, longitude: -77.21361413203749)) ,
        
        Pin(name: "Mott Community Center", coordinate: CLLocationCoordinate2D(latitude: 38.82911129087137, longitude: -77.36387662958286)) ,
        
        Pin(name: "Providence Community Center", coordinate: CLLocationCoordinate2D(latitude: 38.87320716925038, longitude: -77.27205581321039)) ,
        
        Pin(name: "Sully Community Center", coordinate: CLLocationCoordinate2D(latitude: 38.91856754642044, longitude: -77.42271451193915)) ,
        
        Pin(name: "Willston Multicultural Center", coordinate: CLLocationCoordinate2D(latitude: 38.87044550416827, longitude: -77.14880792256949)) ,
    ]
    
    let vaccCenters = [
        Pin(name: "Willston Multicultural Center", coordinate: CLLocationCoordinate2D(latitude: 38.945019091178324, longitude: -79.02855167198409))
    ]
    
    var body: some View {
        VStack{
        }
    }
}


struct TransportView_Previews: PreviewProvider {
    static var previews: some View {
        TransportView()
    }
}
