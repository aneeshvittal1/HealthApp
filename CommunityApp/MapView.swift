//
//  MapView.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/19/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 38.845861, longitude: -77.306246), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    @State private var searchQuery = ""
    
    var body: some View {
        //VStack(){
        NavigationStack(){
            VStack(spacing: 10){
                Map(coordinateRegion: $region)
                    .padding(.top, -160.0)
                    .frame(maxWidth: 450, maxHeight: 350)
                Text("Searching for \(searchQuery)")
                
            }.searchable(text: $searchQuery)
        }
        //}
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
