//
//  HomeView.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/16/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Label("Page 1", systemImage: "list.dash")
                }
            ServiceListView()
                .tabItem{
                    Label("Page 2", systemImage: "square.and.pencil")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
