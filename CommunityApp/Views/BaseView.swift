//
//  BaseView.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/19/22.
//

import SwiftUI

struct BaseView: View {
    
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            MapView()
                .tabItem{
                    Label("Map", systemImage: "map")
                }
//            ProfileView()
//                .tabItem{
//                    Label("Profile", systemImage: "person")
//                }
            
        }
        
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView().environmentObject(LocationManager())
    }
}
