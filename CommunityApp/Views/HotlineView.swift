//
//  HotlineView.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/23/22.
//

import SwiftUI



struct HotlineView: View {
    
    struct Hotline: Identifiable{
        let id = UUID()
        let title : String
        let phoneNum : String
        let hours : String
    }
    
    @State private var hotlineList = [
        Hotline(title: "Emergency Basic Needs", phoneNum: "703-222-0880", hours: "Mon - Fri, 8:00 AM - 4:30 PM"),
        
        Hotline(title: "Emergency Mental Health", phoneNum: "703-573-5679", hours: "24/7"),
        
        Hotline(title: "Suicide Prevention", phoneNum: "703-537-4077", hours: "24/7"),
        
        Hotline(title: "Domestic & Sexual Violence", phoneNum: "703-360-7273", hours: "24/7"),
        
        Hotline(title: "Child Protective Services", phoneNum: "703-324-7400", hours: "24/7"),
        
        Hotline(title: "Adult Protective Services", phoneNum: "703-324-7450", hours: "Mon - Fri, 8:00 AM - 4:30 PM")
    ]
    
    var body: some View {
        
        //ScrollView(showsIndicators: false){
        ZStack{
            Text("").navigationTitle("Hotlines").font(.system(size:25))
            //ScrollView{
                VStack(spacing: 25){
                    ForEach(hotlineList) { hot in
                        HotlineBox(title: hot.title, phoneNum: hot.phoneNum, hours: hot.hours)
                    }
                }.frame(width: 355)
            //}
        }
    }
}

struct HotlineView_Previews: PreviewProvider {
    static var previews: some View {
        HotlineView()
    }
}
