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
                
    
        
                
                }
            }
        }
                
    }
var region = ["Northern Region","Eastern Region","Central Region", "Southern Region","Western Region"]
  
var northernRegion = ["Madain Saleh","Maghair Shuaib"]

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
                                 .overlay(
                                    RoundedRectangle(cornerRadius:8)
                                        .stroke(Color.color3,lineWidth:0.1)
                                 )
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
                                
            }
            }
            
        }
    }



    

    
    #Preview {
        Attractions()
    }

