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
    
    struct MenuButton: ButtonStyle{
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .frame(maxWidth: 150, maxHeight: 25)
                .background(Color(red: 0.80, green: 0.80, blue: 0.80))
                .font(.system(size:12))
                .foregroundColor(.black)
                .clipShape(Capsule())
                .padding(.leading, 8.0)
                .opacity(0.8)
        }
    }
    
    var body: some View {
        ZStack(alignment: .top){
            Map(coordinateRegion: $region)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            Spacer()
            GeometryReader{ geometry in
                HStack(alignment: .top, spacing: 5){
                    VStack(alignment: .leading, spacing: 10){
                        Button(action: {
                            print("Showing Vaccine sites")
                        }) {
                            Label("Vaccine Sites", systemImage: "syringe.fill")
                        } .padding(.top)
                        .buttonStyle(MenuButton())
                        
                        Button(action: {
                            print("Showing testing sites")
                        }) {
                            Label("Testing Sites", systemImage: "cross.fill")
                        }.buttonStyle(MenuButton())
                        
                        Button(action: {
                            print("Showing community sites")
                        }) {
                            Label("Community Centers", systemImage: "figure.2.and.child.holdinghands")
                        }.buttonStyle(MenuButton())
                        
                        Button(action: {
                            print("Showing Shelter sites")
                        }) {
                            Label("Emergency Shelters", systemImage: "house")
                        }.buttonStyle(MenuButton())
                    }
                    Spacer()
                }
                
            }
            
            
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
