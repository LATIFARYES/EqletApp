//
//  MapPage.swift
//  EqletApp
//
//  Created by Nouf Almtrek on 30/03/1445 AH.
//

import SwiftUI

struct MapPage: View {
    @State var currentView: Int = 0
    var body: some View {

        TabView(selection: $currentView) {
            
            ZStack{
                
                Image("1intro")
                    .resizable().frame(height: .infinity)
                    .aspectRatio(contentMode: .fill).ignoresSafeArea()
               
            }

              .tabItem {
                   Text("Map")
                  Image( currentView == 0 ? "cameltrans" : "camelp2-2-2")
                  
                }.tag(0)
           Text(" landmarkes ")
                .tabItem {
                    Image(currentView==1 ? "castel": "building-300")
                    
                        
                    Text("Landmarkes")
                }.tag(1)
            Text("Hame Tab ")
                
                .tabItem {
                    Image(currentView==2 ?  "travel-itinerary":"xxx")
                       
                    Text("My Journyes")
                
                    
                }.tag(2)
           
           
        }
//        onAppear(){
//          UITabBar.appearance().backgroundColor = UIColor.white
//      }
    }
}

#Preview {
    MapPage()
}
