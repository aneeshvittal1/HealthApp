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
    var address: String
    
    init(iconName: String, name: String, dist: Double, deviceWidth: CGFloat, address: String){
        self.iconName = iconName
        self.name = name
        self.dist = dist
        self.deviceWidth = deviceWidth
        self.address = address
    }
    
    
    var body: some View {
        VStack(spacing: deviceWidth/30){
            Divider()
            HStack(spacing: 0){
                HStack(){
                    HStack(spacing: 15){
                        Image(systemName: iconName)
                        Text(name)
                    }.frame(height: 30)
                    Spacer()
                    HStack(spacing: 10){
                        if Int(dist) > 0{
                            Text("\(dist, specifier: "%.1f") mi")
                        }
                        else{
                            Text("\(dist, specifier: "%.2f") mi")
                        }
                        
                        Button(action: {
                            showingSheet.toggle()
                        }) {
                            Image(systemName: "arrow.forward.circle.fill")
                        }.padding(.trailing).sheet(isPresented: $showingSheet) {
                            PointSheetView(pointName: name, icon: iconName, dist: dist, deviceWidth: deviceWidth, address:address)
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
        PointListRow(iconName: "person", name: "Community Park", dist: 0.398, deviceWidth: 828, address: "")
    }
}
