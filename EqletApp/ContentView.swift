//
//  ContentView.swift
//  EqletApp
//
//  Created by LATIFA on 09/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            
            
            Text(" ")
                
            
                .tabItem {
                    Image( "cameltrans")
                    Text("Map")
                }.tag(0)
           Text(" landmarkes ")
                .tabItem {
                    Image( "castel")
                    Text("Landmarkes")
                }.tag(1)
            Text("Hame Tab ")
                .tabItem {
                    Image(  "xxx")
                    Text("My Journyes")
                    
                }.tag(2)
           
           
        }
    }
}

#Preview {
    ContentView()
}
