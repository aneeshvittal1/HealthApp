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
        NavigationStack{
            ZStack{
                ScrollView(showsIndicators:false){
                    VStack(spacing: 10){
                        Spacer()
                        Image("PNG logo")
                            .resizable()
                            .frame(maxWidth: 330, maxHeight: 146, alignment: .leading)
                        
                        //Spacer()
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
                                    NavigationLink{
                                        ProfileView()
                                    }label: {
                                        Text("Welfare Aid")
                                    }.buttonStyle(MenuButton())
                                    
                                    NavigationLink{
                                        ProfileView()
                                    }label: {
                                        Text("Transportation")
                                    }.buttonStyle(MenuButton())
                                    
                                    NavigationLink{
                                        ProfileView()
                                    }label: {
                                        Text("Substance Abuse")
                                    }.buttonStyle(MenuButton())
                                    
                                    
                                }
                                
                                VStack(spacing: 25){ //Right Column
                                    NavigationLink{
                                        ProfileView()
                                    }label: {
                                        Text("Mental Health")
                                    }.buttonStyle(MenuButton())
         
                                    NavigationLink{
                                        HotlineView()
                                    }label: {
                                        Text("Hotlines")
                                    }.buttonStyle(MenuButton())
                                    
                                    NavigationLink{
                                        ProfileView()
                                    }label: {
                                        Text("Button 6")
                                    }.buttonStyle(MenuButton())
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
        }
            
            
            
        }
        

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
