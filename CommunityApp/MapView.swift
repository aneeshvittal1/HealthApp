//
//  MapView.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/19/22.
//

import SwiftUI
import MapKit
import CoreLocation

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
                //.border(.black)
                .clipShape(Capsule())
                
                .padding(.leading, 8.0)
                .opacity(0.8)
        }
    }
    
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
    
    struct Pin: Identifiable{
        let id = UUID()
        let name: String
        let type: String
        let icon: String
        let coordinate: CLLocationCoordinate2D
    }
    
    @State private var showCommCenters = false
    @State private var showVaccCenters = false
    @State private var showTestCenters = false
    @State private var showShelterCenters = false
    
    @State private var commCenters = [
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
    
    @State private var vaccCenters = [
        Pin(name: "Vaccine Center 1", type: "Vacc", icon:"syringe", coordinate: CLLocationCoordinate2D(latitude: 38.945019091178324, longitude: -79.02855167198409))
    ]
    
    @State private var testCenters = [
        Pin(name: "Test Site 1", type: "Test", icon:"cross.circle.fill", coordinate: CLLocationCoordinate2D(latitude: 38.84161429312895, longitude: -77.39507698417412))
    ]
    
    
    @State private var shelterCenters = [
        Pin(name: "Katherine K. Hanley Family Shelter", type: "Shelter", icon: "house.and.flag.fill", coordinate: CLLocationCoordinate2D(latitude: 38.84161429312895, longitude: -77.39507698417412)),
        
        Pin(name: "Embry Rucker Community Shelter ", type: "Shelter", icon: "house.and.flag.fill", coordinate: CLLocationCoordinate2D(latitude: 38.96160185965853, longitude: -77.35944592898608)),
        
        Pin(name: "Patrick Henry Family Shelter", type: "Shelter",  icon: "house.and.flag.fill", coordinate: CLLocationCoordinate2D(latitude: 38.86621838857817, longitude: -77.15042961484993)),
        
        Pin(name: "Next Steps Family Program", type: "Shelter", icon: "house.and.flag.fill", coordinate: CLLocationCoordinate2D(latitude: 38.721301733431346, longitude: -77.12734608027671)),
        
        Pin(name: "Bailey’s Crossroads Community Shelter", type: "Shelter", icon: "house.and.flag.fill", coordinate: CLLocationCoordinate2D(latitude:  38.84910263470641, longitude: -77.12908711017678)),
        
        Pin(name: "Eleanor U. Kennedy Shelter", type: "Shelter", icon: "house.and.flag.fill", coordinate: CLLocationCoordinate2D(latitude: 38.70791026989636, longitude: -77.159656563662)),
    ]
    
    
    var body: some View {
        let allList = vaccCenters+commCenters+shelterCenters+testCenters
        
        
        GeometryReader{ dim in
            VStack(spacing: 5){
                ZStack(alignment: .top){
                    Map(coordinateRegion: $region, annotationItems: commCenters+vaccCenters+shelterCenters) { loc in
                            MapAnnotation(coordinate: loc.coordinate){
                                
                                if  loc.type == "Comm" && showCommCenters{
                                    ZStack{
                                        Image(systemName: "circle.fill").foregroundColor(Color(red: 0.2, green: 0.6, blue: 1.0))
                                            .font(Font.system(size: 25 ,weight: .heavy))
                                        Image(systemName: "figure.2.and.child.holdinghands").foregroundColor(.white)
                                            .font(Font.system(size: 13 ,weight: .heavy))
                                    }
                                    
                                }
                                
                                else if loc.type == "Vacc" && showVaccCenters{
                                    ZStack{
                                        Image(systemName: "circle.fill").foregroundColor(Color(red: 0.2, green: 0.6, blue: 1.0))
                                            .font(Font.system(size: 25 ,weight: .heavy))
                                        Image(systemName: "syringe").foregroundColor(.white)
                                            .font(Font.system(size: 13 ,weight: .heavy))
                                    }
                                    
                                }
                                
                                else if loc.type == "Test" && showTestCenters{
                                    Image(systemName: "cross.circle.fill").foregroundColor(.pink)
                                        .font(Font.system(size: 20 ,weight: .heavy))
                                }
                                
                                else if loc.type == "Shelter" && showShelterCenters{
                                    ZStack{
                                        Image(systemName: "circle.fill").foregroundColor(Color(red: 0.2, green: 0.6, blue: 1.0))
                                            .font(Font.system(size: 25 ,weight: .heavy))
                                        Image(systemName: "house.and.flag.fill").foregroundColor(.white)
                                            .font(Font.system(size: 12 ,weight: .heavy))
                                    }
                                    
                                }
                            }
                    }
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: (dim.size.height/5)*3)
                        
                        GeometryReader{ geometry in
                            HStack(alignment: .top, spacing: 5){
                                VStack(alignment: .leading, spacing: 10){
                                    Text("")
                                    Toggle(isOn: $showVaccCenters){
                                        Label("Vaccine Sites", systemImage: "syringe.fill").foregroundColor(showVaccCenters ? .white : .black)
                                    }.toggleStyle(ToggleButton())
                                    
                                    Toggle(isOn: $showTestCenters){
                                        Label("Testing Sites", systemImage: "cross.fill")
                                            .foregroundColor(showTestCenters ? .white : .black)
                                    }.toggleStyle(ToggleButton())
                                    
                                    Toggle(isOn: $showCommCenters){
                                        Label("Community Centers", systemImage: "figure.2.and.child.holdinghands")
                                            .foregroundColor(showCommCenters ? .white : .black)
                                    }.toggleStyle(ToggleButton())
                                    
                                    Toggle(isOn: $showShelterCenters){
                                        Label("Emergency Shelters", systemImage: "house.and.flag.fill")
                                            .foregroundColor(showShelterCenters ? .white : .black)
                                    }.toggleStyle(ToggleButton())
                                    

                                }
                            }
                        }
                    }//End map Z stack
                VStack(spacing: 10){
                    ScrollView(showsIndicators: false){
                        VStack(spacing: 0){
                            ForEach(allList){ point in
                                if point.type == "Comm" && showCommCenters{
                                    PointListRow(iconName: point.icon, name: point.name, dist: 2.0, deviceWidth: dim.size.width)
                                }
                                if point.type == "Vacc" && showVaccCenters{
                                    PointListRow(iconName: point.icon, name: point.name, dist: 2.0, deviceWidth: dim.size.width)
                                }
                                if point.type == "Shelter" && showShelterCenters{
                                    PointListRow(iconName: point.icon, name: point.name, dist: 2.0, deviceWidth: dim.size.width)
                                }
                                if point.type == "Test" && showTestCenters{
                                    PointListRow(iconName: point.icon, name: point.name, dist: 2.0, deviceWidth: dim.size.width)
                                }
                            }
                        }
                    }
                }
            } //End Vstack
        } //End Top level Geometry
    }
}
    
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
        }
    }
