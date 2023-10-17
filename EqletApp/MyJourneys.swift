//
//  MyJourneys.swift
//  EqletApp
//
//  Created by Raghad on 17/10/2023.
//

import SwiftUI

struct MyJourneys: View {
    init() {
        // Large Navigation Title
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.color5]
    }
    
    var body: some View {
        
        
        
        NavigationStack{
            ZStack {
                Color.color1
                    .ignoresSafeArea()
                
                VStack(spacing: 30){
            
                    
                    ScrollView{
                        LazyVStack(alignment:.leading, spacing:25) {
                            ForEach(Centrallandmarks){landmark in
                                CardView(landmark: landmark)
                            }
                        }
                        .padding()
                     
                        Spacer()
                    }
                    
                }
                .navigationTitle("My Journeys")
                
            }
            
        }
        
     }
    }


#Preview {
    MyJourneys()
}
