//
//  MapVaccIcon.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 1/12/23.
//

import SwiftUI

struct MapVaccIcon: View {
    var body: some View {
        ZStack{
            Image(systemName: "circle.fill").foregroundColor(Color(red: 0.2, green: 0.6, blue: 1.0))
                .font(Font.system(size: 25 ,weight: .heavy))
            Image(systemName: "syringe").foregroundColor(.white)
                .font(Font.system(size: 13 ,weight: .heavy))
        }
    }
}

struct MapVaccIcon_Previews: PreviewProvider {
    static var previews: some View {
        MapVaccIcon()
    }
}
