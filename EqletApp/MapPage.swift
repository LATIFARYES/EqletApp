//
//  MapPage.swift
//  EqletApp
//
//  Created by Raghad on 17/10/2023.
//

import SwiftUI

struct MapPage: View {
    @State var currentView: Int = 0
    
//    //tabbar color
//    init() {
//        UITabBar.appearance().barTintColor = UIColor(Color(.white))
//      }
    
    
    var body: some View {

        TabView(selection: $currentView) {
            
            ZStack{
                Image("intro")
                    .resizable().frame(height: .infinity)
                    .aspectRatio(contentMode: .fill)
            }
              .tabItem {
                   Text("Map")
                  Image( currentView == 0 ? "cameltrans" : "camelp2-2-2")
                  
                }.tag(0)

           Text(" landmarkes ")
            Attractions()
                .tabItem {
                    Image(currentView==1 ? "castel": "building-300")
                    
                        
                    Text("Landmarkes")
                }.tag(1)
            
            Text("Home Tab ")
                MyJourneys()
                .tabItem {
                    Image(currentView==2 ?  "travel-itinerary":"xxx")
                    Text("My Journyes")
                }.tag(2)
            
        } 


    
        .onAppear{

            requestPermession()
        }
    }
    func requestPermession(){
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            if success {
                print("All set!")
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
    MapPage()
}

