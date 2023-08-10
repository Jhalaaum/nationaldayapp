//
//  ContentView.swift
//  nationaldayhackathon
//
//  Created by Jhala family on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            SingFlagVIew()
                .tabItem {
                    Label("Our Home", systemImage: "flag.fill")
                }
            MapView()
                .tabItem {
                    Label("Map", systemImage: "map.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
