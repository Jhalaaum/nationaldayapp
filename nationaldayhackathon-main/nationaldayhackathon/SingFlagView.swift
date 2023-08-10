//
//  HawkerFoodView.swift
//  nationaldayhackathon
//
//  Created by James Toh on 22/7/23.
//

import SwiftUI

struct SingFlagVIew: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Our Home")
            Image("singapore_flag")
            Spacer()
        }
    }
}

struct HawkerFoodView_Previews: PreviewProvider {
    static var previews: some View {
        SingFlagVIew()
    }
}
