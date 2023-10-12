//
//  Attractions.swift
//  EqletApp
//
//  Created by Wajd Alhadlaq on 26/03/1445 AH.
//

import SwiftUI

struct Attractions: View {
    @State var selectedRegion = region[0]
    var body: some View {
        ZStack{
            Color.color1
                .ignoresSafeArea()
           
            VStack(alignment: .leading){
            Text("Landmarks")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.color5)
                    .bold()
                    .padding()
            ScrollView(.horizontal){
                HStack(spacing:10){
                    ForEach(0 ..< 5) { i in
                        RegionButton(selected: $selectedRegion, isActive: i == 1, regionName: region[i] )
           
                            }
 
                    }
                    Spacer()
                    }
                    .padding()
    
                
                }
            }
        }
                
    }
var region = ["Northern Region","Eastern Region","Central Region", "Southern Region","Western Region"]
  
struct RegionButton : View{
    @Binding var selected: String
    let isActive : Bool
    let regionName : String
    var body : some View {
        Button(action:{
            selected = regionName
        })
        {
            
            VStack{
               
                Text(regionName)
                    .frame(maxHeight:40)
                    .frame(maxWidth:74)
        
                                 .font(.system(size:12))
                                 .foregroundColor(selected == regionName ? .white : .color4)
                                 .background(ZStack{
                                     if(selected == regionName){
                                         Color.color4
                                     }
                                     else{
                                         Color.white
                                     }
                                 })
                                 
                                 .cornerRadius(8)
                                 .shadow(radius:1,x:1,y:1)
                                 
                                
            }
            }
            
        }
    }



    

    
    #Preview {
        Attractions()
    }

