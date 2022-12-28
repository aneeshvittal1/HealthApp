//
//  PointListRow.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/28/22.
//

import SwiftUI

struct PointListRow: Identifiable, View {
    
    @State private var showingSheet = false
    
    var id = UUID()
    var iconName: String
    var name: String
    var dist: Double
    var deviceWidth: CGFloat
    
    init(iconName: String, name: String, dist: Double, deviceWidth: CGFloat){
        self.iconName = iconName
        self.name = name
        self.dist = dist
        self.deviceWidth = deviceWidth
    }
    
    
    var body: some View {
        VStack(spacing: deviceWidth/30){
            Divider()
            HStack(spacing: 0){
                HStack(){
                    HStack(spacing: 15){
                        Image(systemName: iconName)
                        Text(name)
                    }.frame(width: .infinity, height: 30)
                    Spacer()
                    HStack(spacing: 10){
                        Text("\(dist, specifier: "%.1f") mi")
                        Button(action: {
                            showingSheet.toggle()
                        }) {
                            Image(systemName: "arrow.forward.circle.fill")
                        }.padding(.trailing).sheet(isPresented: $showingSheet) {
                            PointSheetView(pointName: name, icon: iconName, dist: dist, deviceWidth: deviceWidth)
                        }
                    }
                }
            }
            
            Divider()
        }
    }
}

struct PointListRow_Previews: PreviewProvider {
    static var previews: some View {
        PointListRow(iconName: "person", name: "Community Park", dist: 2.0, deviceWidth: 828)
    }
}
