//
//  MerlionView.swift
//  nationaldayhackathon
//
//  Created by Jhala family on 22/7/23.
//

import SwiftUI

struct Merlion: View {
    var body: some View {
        VStack {
            Image("merlion")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("The Merlion")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Text("The Merlion, with the head of a lion and the body of a fish, is an iconic symbol of Singapore.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            
        }
        .navigationTitle("Merlion History")
    }
}

struct Merlion_Previews: PreviewProvider {
    static var previews: some View {
        Merlion()
    }
}
