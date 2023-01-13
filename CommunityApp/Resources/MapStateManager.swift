//
//  MapStateManager.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 1/13/23.
//

import Foundation

class MapStateManager: ObservableObject{
    
    @Published var showCommCenters : Bool
    @Published var showTestCenters : Bool
    @Published var showVaccCenters : Bool
    @Published var showShelterCenters : Bool
    
    init(showCommCenters: Bool, showTestCenters: Bool, showVaccCenters: Bool, showShelterCenters: Bool) {
        self.showCommCenters = showCommCenters
        self.showTestCenters = showTestCenters
        self.showVaccCenters = showVaccCenters
        self.showShelterCenters = showShelterCenters
    }
    
    func toggleComm(){
        self.showCommCenters = !self.showCommCenters
    }
}
