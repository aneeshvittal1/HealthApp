//
//  HotlineView.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/23/22.
//

import SwiftUI



struct HotlineView: View {
    var body: some View {
        ZStack{
            ScrollView(showsIndicators: false){
                VStack{
                        VStack(spacing: 35){
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 1)
                                    .shadow(color: .black, radius: 2, x: 0, y: 4)
                                    .frame(width: 350, height: 100)
                                    .opacity(0.3)
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 350, height: 100)
                                
                                VStack(spacing: 10){
                                    Text("Emergency Basic Needs")
                                        .font(.system(size:20, weight: .semibold))
                                    Text("703-222-0880").font(.system(size:18))
                                    
                                    Text("Mon - Fri, 8:00 AM - 4:30 PM")
                                }
                            }
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 1)
                                    .shadow(color: .black, radius: 2, x: 0, y: 4)
                                    .frame(width: 350, height: 100)
                                    .opacity(0.3)
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 350, height: 100)
                                
                                VStack(spacing: 10){
                                    Text("Emergency Mental Health")
                                        .font(.system(size:20, weight: .semibold))
                                    Text("703-573-5679").font(.system(size:18))
                                    
                                    Text("24/7")
                                }
                            }
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 1)
                                    .shadow(color: .black, radius: 2, x: 0, y: 4)
                                    .frame(width: 350, height: 100)
                                    .opacity(0.3)
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 350, height: 100)
                                
                                VStack(spacing: 10){
                                    Text("Suicide Prevention")
                                        .font(.system(size:20, weight: .semibold))
                                    Text("703-537-4077").font(.system(size:18))
                                    
                                    Text("24/7")
                                }
                            }
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 1)
                                    .shadow(color: .black, radius: 2, x: 0, y: 4)
                                    .frame(width: 350, height: 100)
                                    .opacity(0.3)
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 350, height: 100)
                                
                                VStack(spacing: 10){
                                    Text("Domestic & Sexual Violence")
                                        .font(.system(size:20, weight: .semibold))
                                    Text("703-360-7273").font(.system(size:18))
                                    
                                    Text("24/7")
                                }
                            }
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 1)
                                    .shadow(color: .black, radius: 2, x: 0, y: 4)
                                    .frame(width: 350, height: 100)
                                    .opacity(0.3)
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 350, height: 100)
                                
                                VStack(spacing: 10){
                                    Text("Child Protective Services")
                                        .font(.system(size:20, weight: .semibold))
                                    Text("703-324-7400").font(.system(size:18))
                                    
                                    Text("24/7")
                                }
                            }
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 1)
                                    .shadow(color: .black, radius: 2, x: 0, y: 4)
                                    .frame(width: 355, height: 100)
                                    .opacity(0.3)
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 355, height: 100)
                                
                                VStack(spacing: 10){
                                    Text("Adult Protective Services")
                                        .font(.system(size:20, weight: .semibold))
                                    
                                    Text("703-324-7450").font(.system(size:18))
                                    
                                    Text("Mon - Fri, 8:00 AM - 4:30 PM")
                                }
                            }
                            
                        }
                }
            }
        }
    }
}

struct HotlineView_Previews: PreviewProvider {
    static var previews: some View {
        HotlineView()
    }
}
