//
//  MyJourneys.swift
//  EqletApp
//
//  Created by LATIFA on 14/10/2023.
//

import SwiftUI

struct MyJourneys: View {
    var body: some View {
        
        
        
        NavigationStack{
            ZStack{
                Color.colorbac
                    .ignoresSafeArea()
                
                VStack{
                    
                    Rectangle()
                        .fill(.white)
                        .cornerRadius(16)
                        .frame(width: 350, height: 140)
                        .border(Color.colorbor)
                        .cornerRadius(16)
                    
                    Rectangle()
                        .fill(.white)
                        .cornerRadius(16)
                        .frame(width: 350, height: 140)
                        .border(Color.colorbor)
                        .cornerRadius(16)
                    
                    
                    Rectangle()
                        .fill(.white)
                        .cornerRadius(16)
                        .frame(width: 350, height: 140)
                        .border(Color.colorbor)
                        .cornerRadius(16)

                }
                
            }
            .navigationTitle(" My Journeys")
            
        }
    }
    
    init() {
      // Large Navigation Title
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.colortext]
    }
    
}

#Preview {
    MyJourneys()
}
