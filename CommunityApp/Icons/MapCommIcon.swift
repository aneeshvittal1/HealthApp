//
//  MapCommIcon.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 1/12/23.
//

import SwiftUI

struct MapCommIcon: View {
    var body: some View {
        ZStack{
            Image(systemName: "circle.fill").foregroundColor(Color(red: 0.2, green: 0.6, blue: 1.0))
                .font(Font.system(size: 25 ,weight: .heavy))
            Image(systemName: "figure.2.and.child.holdinghands").foregroundColor(.white)
                .font(Font.system(size: 13 ,weight: .heavy))
        }
    }
}

struct MapCommIcon_Previews: PreviewProvider {
    static var previews: some View {
        MapCommIcon()
    }
}
