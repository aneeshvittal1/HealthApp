//
//  HomeView.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/19/22.
//

import SwiftUI


struct MenuButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: 160, maxHeight: 50)
            .background(Color(red: 0.90, green: 0.90, blue: 0.90))
            .foregroundColor(.black)
            .clipShape(Capsule())
    }
}



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
                        .shadow(color: .black, radius: 2, x: 0, y: 4)
                        .frame(width: 360, height: 265)
                        .opacity(0.3)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(width: 360, height: 265)
                    
                    HStack{
                        VStack(spacing: 25){ //Left Column
                            Button("Welfare Aid"){
                                print("Button1")
                            } .buttonStyle(MenuButton())
                            
                            Button("Transportation"){
                                print("Button2")
                            } .buttonStyle(MenuButton())
                            
                            Button("Substance Abuse"){
                                print("Button3")
                            } .buttonStyle(MenuButton())
                        }
                        
                        VStack(spacing: 25){ //Right Column
                            Button("Mental Health"){
                                print("Button4")
                            } .buttonStyle(MenuButton())
                            
                            Button("Hotlines"){
                                print("Button5")
                            } .buttonStyle(MenuButton())
                            
                            Button("Button 6"){
                                print("Button6")
                            } .buttonStyle(MenuButton())
                        }
                    }
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
