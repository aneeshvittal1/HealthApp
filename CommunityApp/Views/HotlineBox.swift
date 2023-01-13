//
//  HotlineBox.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/28/22.
//

import SwiftUI

struct LinkButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: 150, maxHeight: 25)
            .background(Color(red: 0.90, green: 0.90, blue: 0.90))
            .foregroundColor(.black)
            .font(.system(size:18))
            .clipShape(Capsule())
            .padding(.leading, 8.0)
    }
}

struct HotlineBox: View {
    var title: String
    var phoneNum: String
    var hours: String
    
    init(title: String, phoneNum: String, hours: String){
        self.title = title
        self.phoneNum = phoneNum
        self.hours = hours
    }
    
    var body: some View {
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
                Text(title)
                    .font(.system(size:20, weight: .semibold))
                Link(phoneNum, destination: URL(string: "tel://\(phoneNum)")!).buttonStyle(LinkButton())
                Text(hours)
            }
        }
    }
}

struct HotlineBox_Previews: PreviewProvider {
    static var previews: some View {
        HotlineBox(title: "Adult Protective Services", phoneNum: "703-324-7450", hours: "Mon - Fri, 8:00 AM - 4:30 PM")
    }
}
