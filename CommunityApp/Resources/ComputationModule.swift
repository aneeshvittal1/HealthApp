//
//  ComputationModule.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 1/13/23.
//

import Foundation

class ComputationModule {
    
    func distInMiles(lat1: Double, long1: Double, lat2: Double, long2: Double) -> Double{
        let dist = acos(sin(lat1)*sin(lat2)+cos(lat1)*cos(lat2)*cos(long2-long1)) * 100
        
        //let dist = acos((sin(lat1) * sin(lat2)) + cos(lat1) * cos(lat2) * cos(long2 - long1))
        return Double(dist)
    }
}
