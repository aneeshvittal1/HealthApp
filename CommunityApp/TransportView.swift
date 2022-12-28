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
