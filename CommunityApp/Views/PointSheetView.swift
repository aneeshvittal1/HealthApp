//
//  PointSheetView.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/28/22.
//

import SwiftUI

struct PointSheetView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var pointName: String
    var icon: String
    var dist: Double
    var deviceWidth: CGFloat
    
    init(pointName: String, icon: String, dist: Double, deviceWidth: CGFloat){
        self.pointName = pointName
        self.icon = icon
        self.dist = dist
        self.deviceWidth = deviceWidth
    }
    var body: some View {
        let iconSize = icon == "house.and.flag.fill" ? deviceWidth/7 : deviceWidth/6
        VStack(spacing: 30){
            ZStack{
                Image(systemName: "circle.fill").font(Font.system(size: deviceWidth/3.5))
                Image(systemName: icon).font(Font.system(size: iconSize))
                    .foregroundColor(colorScheme == .dark ? .black : .white)
            }
            VStack(spacing: 15){
                Text("\(pointName)").font(Font.system(size: deviceWidth/17)).multilineTextAlignment(.center)
                Text("\(dist, specifier: "%.1f") mi").font(Font.system(size: deviceWidth/30))
            }
            
            
        }
        
    }
}

struct PointSheetView_Previews: PreviewProvider {
    static var previews: some View {
        PointSheetView(pointName: "Community Park", icon: "house.and.flag.fill", dist: 2.0, deviceWidth: 828)
    }
}
