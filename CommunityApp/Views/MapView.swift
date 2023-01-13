    import SwiftUI
    import MapKit
    import CoreLocation

    struct MapView: View {
        
        @EnvironmentObject var state : MapStateManager
        @State private var data = Points()
        @State private var assistant = MapViewAssistant()
        @StateObject private var manager = LocationManager()
        
        var body: some View {
            GeometryReader{ dim in
                VStack(spacing: 5){
                    
                    assistant.frame(height: (dim.size.height/5)*3)
  
                    VStack(spacing: 10){
                        if !state.showCommCenters && !state.showVaccCenters && !state.showTestCenters && !state.showShelterCenters{
                            
                            Text("Select a button to get started")
                        }
                        else{
                            ScrollView(showsIndicators: false){
                                VStack(spacing: 0){
                                    ForEach(data.allPoints){ point in
                                        if point.type == "Comm" && state.showCommCenters{
                                            PointListRow(iconName: point.icon, name: point.name, dist: 2.0, deviceWidth: dim.size.width)
                                        }
                                        if point.type == "Vacc" && state.showVaccCenters{
                                            PointListRow(iconName: point.icon, name: point.name, dist: 2.0, deviceWidth: dim.size.width)
                                        }
                                        if point.type == "Shelter" && state.showShelterCenters{
                                            PointListRow(iconName: point.icon, name: point.name, dist: 2.0, deviceWidth: dim.size.width)
                                        }
                                        if point.type == "Test" && state.showTestCenters{
                                            PointListRow(iconName: point.icon, name: point.name, dist: 2.0, deviceWidth: dim.size.width)
                                        }
                                    }// End For Each
                                }
                            } // End ScrollView VStack
                        } // End Scroll View
                    } //End Info Section VStack
                } //End top level Vstack
            } //End Top level Geometry
        }
    }
        
        struct MapView_Previews: PreviewProvider {
            static var previews: some View {
                MapView().environmentObject(MapStateManager(showCommCenters: false, showTestCenters: false, showVaccCenters: false, showShelterCenters: false))
            }
        }
