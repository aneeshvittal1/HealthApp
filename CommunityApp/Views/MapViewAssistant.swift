//
//  MapViewAssistant.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 1/13/23.
//

import SwiftUI
import MapKit
import CoreLocation

struct ToggleButton: ToggleStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: 150, maxHeight: 25)
            .background(configuration.isOn ? Color(red: 0.2, green: 0.6, blue: 1.0) : Color(red: 0.80, green: 0.80, blue: 0.80))
            .font(.system(size:12))
            .foregroundColor(.black)
            .clipShape(Capsule())
            .padding(.leading, 8.0)
            .opacity(configuration.isOn ? 1.0 : 0.8)
            .onTapGesture {
                configuration.isOn.toggle()
            }
    }
}


struct MapViewAssistant: View{
    @StateObject private var location = LocationManager()
    @State private var data = Points()
    
    @EnvironmentObject var state : MapStateManager
    
    var body: some View {
        ZStack(alignment: .top){
            Map(coordinateRegion: $location.region, showsUserLocation: true, annotationItems: data.allPoints) { loc in
                MapAnnotation(coordinate: loc.coordinate){
                    if  loc.type == "Comm" && state.showCommCenters{
                        MapCommIcon()
                    }
                    
                    else if loc.type == "Vacc" && state.showVaccCenters{
                        MapVaccIcon()
                    }
                    
                    else if loc.type == "Test" && state.showTestCenters{
                        MapTestIcon()
                    }
                    
                    else if loc.type == "Shelter" && state.showShelterCenters{
                        MapShelterIcon()
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
            .onAppear{
                location.checkIfLocationServiceEnabled()
            }
            
            HStack(spacing: 5){
                VStack(alignment: .leading, spacing: 10){
                    Text("")
                    Toggle(isOn: $state.showVaccCenters){
                        Label("Vaccine Sites", systemImage: "syringe.fill").foregroundColor(state.showVaccCenters ? .white : .black)
                    }.toggleStyle(ToggleButton())
                    
                    Toggle(isOn: $state.showTestCenters){
                        Label("Testing Sites", systemImage: "cross.fill")
                            .foregroundColor(state.showTestCenters ? .white : .black)
                    }.toggleStyle(ToggleButton())
                    
                    Toggle(isOn: $state.showCommCenters){
                        Label("Community Centers", systemImage: "figure.2.and.child.holdinghands")
                            .foregroundColor(state.showCommCenters ? .white : .black)
                    }.toggleStyle(ToggleButton())
                    
                    Toggle(isOn: $state.showShelterCenters){
                        Label("Emergency Shelters", systemImage: "house.and.flag.fill")
                            .foregroundColor(state.showShelterCenters ? .white : .black)
                    }.toggleStyle(ToggleButton())
                }
                Spacer()
            }
        }
    }
}

struct MapViewAssistant_Previews: PreviewProvider {
    static var previews: some View {
        MapViewAssistant().environmentObject(MapStateManager(showCommCenters: false, showTestCenters: false, showVaccCenters: false, showShelterCenters: false))
    }
}
