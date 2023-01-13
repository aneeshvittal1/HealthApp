//
//  TransportView.swift
//  CommunityApp
//
//  Created by Aneesh Vittal on 12/23/22.
//

import SwiftUI
import MapKit



struct TransportView: View {
    
    @State private var req = RequestModule()
    
    var body: some View {
        VStack{
            Button("Click"){
                req.getVaccines()
            }
        }
    }
}


struct TransportView_Previews: PreviewProvider {
    static var previews: some View {
        TransportView()
    }
}
