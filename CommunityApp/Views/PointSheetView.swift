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
    var address: String
    var encodedAddr = ""
    
    init(pointName: String, icon: String, dist: Double, deviceWidth: CGFloat){
        self.pointName = pointName
        self.icon = icon
        self.dist = dist
        self.deviceWidth = deviceWidth
        self.address = ""
    }
    
    init(pointName: String, icon: String, dist: Double, deviceWidth: CGFloat, address: String){
        self.pointName = pointName
        self.icon = icon
        self.dist = dist
        self.deviceWidth = deviceWidth
        self.address = address
        self.encodedAddr = address.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
    }
    
    func openAddress(address: String){
//        let link = URL(string:"http://maps.apple.com/?address=\(address)")
//        if UIApplication.shared.canOpenURL(link!){
//            UIApplication.shared.open(link!)
//        }
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
                if Int(dist) > 0{
                    Text("\(dist, specifier: "%.1f") mi").font(Font.system(size: deviceWidth/30))
                }
                else{
                    Text("\(dist, specifier: "%.2f") mi").font(Font.system(size: deviceWidth/30))
                }
                Text("\(address)").multilineTextAlignment(.center).onTapGesture {
                    UIApplication.shared.open(URL(string: "http://maps.apple.com/?address=\(encodedAddr)")!)
                }
                
            }
            
            
        }
        
    }
}

struct PointSheetView_Previews: PreviewProvider {
    static var previews: some View {
        PointSheetView(pointName: "Community Park", icon: "house.and.flag.fill", dist: 0.333, deviceWidth: 828, address: "123 Main St\nFairfax, VA 22222")
    }
}
