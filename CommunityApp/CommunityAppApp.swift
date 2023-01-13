//
//  CommunityAppApp.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/16/22.
//

import SwiftUI

@main
struct CommunityAppApp: App {
    @StateObject var mapState = MapStateManager(showCommCenters: false, showTestCenters: false, showVaccCenters: false, showShelterCenters: false)
    var body: some Scene {
        WindowGroup {
            BaseView().environmentObject(mapState)
        }
    }
}
