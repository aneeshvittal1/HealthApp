//
//  WelfareView.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 1/12/23.
//

import SwiftUI
import MapKit

struct WelfareView: View{
    
    @StateObject private var manager = LocationManager()
    var body: some View {
        Map(coordinateRegion: $manager.region).onAppear{
            manager.checkIfLocationServiceEnabled()
        }
    }
}

struct WelfareView_Previews: PreviewProvider {
    static var previews: some View {
        WelfareView()
    }
}
