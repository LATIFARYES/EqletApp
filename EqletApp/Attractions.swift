//
//  Attractions.swift
//  EqletApp
//
//  Created by Wajd Alhadlaq on 26/03/1445 AH.
//

import SwiftUI

struct Attractions: View {
    
    init() {
    //Use this if NavigationBarTitle is with Large Font
    UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.color5)]

        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.color5)]
    }
    
    
    @State var selectedRegion = region[0]
    
    
    var body: some View {
        ZStack{
            Color.color1
                .ignoresSafeArea()
            NavigationStack{
                VStack{
                    ScrollView(.horizontal){
                        HStack(spacing:15){
                            ForEach(0 ..< 5) { i in
                                RegionButton(selected: $selectedRegion, isActive: i == 1, regionName: region[i] )
                                
                            }
                           
                        }
                        .padding(.vertical)
                        .padding(.vertical)
                    
                
                    }
        
                        ScrollView{
                        LazyVStack(alignment:.leading, spacing:25) {
                          
                            if selectedRegion == region[0]{
                                ForEach(Northernlandmarks){landmark in
                                    CardView(landmark: landmark)
                                }
                            }else if selectedRegion == region[1]{
                                ForEach(Easternlandmarks){landmark in
                                    CardView(landmark: landmark)
                                }
                                
                            }else if selectedRegion == region[2]{
                                ForEach(Centrallandmarks){landmark in
                                    CardView(landmark: landmark)
                                }
                                
                            }else if selectedRegion == region[3]{
                                ForEach(Southernlandmarks){landmark in
                                    CardView(landmark: landmark)
                                }
                                
                            }else if selectedRegion == region[4]{
                                ForEach(Westernlandmarks){landmark in
                                    CardView(landmark: landmark)
                                }
                                
                            }
                            
                            
        
                                    
                            
                        }
                        
                
                    }
               
                   
                }
                .padding(.horizontal)
                .navigationTitle("Landmarks")
              
                
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

