//
//  MapShelterIcon.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 1/12/23.
//

import SwiftUI

struct MapShelterIcon: View {
    var body: some View {
        ZStack{
            Image(systemName: "circle.fill").foregroundColor(Color(red: 0.2, green: 0.6, blue: 1.0))
                .font(Font.system(size: 25 ,weight: .heavy))
            Image(systemName: "house.and.flag.fill").foregroundColor(.white)
                .font(Font.system(size: 12 ,weight: .heavy))
        }
    }
}

struct MapShelterIcon_Previews: PreviewProvider {
    static var previews: some View {
        MapShelterIcon()
    }
}
