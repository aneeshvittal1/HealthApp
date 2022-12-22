//
//  HomeView.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/19/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Spacer()
                Text("Time2Care")
                    .padding(.leading)
                    .font(.system(size:40, weight: .black))
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                Spacer()
                Spacer()
                Text("Resources")
                    .padding(.leading, 40)
                    .font(.system(size:25, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.black, lineWidth: 1)
                        .shadow(color: .blue, radius: 2, x: 0, y: 4)
                        .frame(width: 360, height: 300)
                        .opacity(0.3)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(width: 360, height: 300)
                    
                }
                
                Spacer()
                Spacer()
                
                Text("Care First")
                    .padding(.leading, 40)
                    .font(.system(size:25, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.black, lineWidth: 1)
                        .shadow(color: .black, radius: 2, x: 0, y: 4)
                        .frame(width: 360, height: 300)
                        .opacity(0.3)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(width: 360, height: 300)
                    
                }
                
            }
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
