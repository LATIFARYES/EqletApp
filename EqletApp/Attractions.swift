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
                          
                            
                            ForEach(landmarks){landmark in
                                CardView(landmark: landmark)
                                
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

struct LandmarkButton : View{
    @Binding var selected: String
    let isActive : Bool
    let landmarkName : String
    var body : some View {
        Button(action:{
            selected = landmarkName
        })
        {
            
            
                HStack{
                    VStack(alignment: .leading,spacing: 10){
                        Image("MadainSaleh")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                        .frame(width:UIScreen.main.bounds.width/3.2,height:99)}
                    
                    
                    Text("Madain Saleh")
                        .fontWeight(.heavy)
                     
                        .font(.system(size:12))
                        .foregroundColor(.color4)
                        .background(.white)
                    
                    
                }
                .frame(height:99)
                .frame(width:347)
                .overlay(
                    RoundedRectangle(cornerRadius:8)
                        .stroke(Color.color2,lineWidth:2)
                )
                
    
                .cornerRadius(8)
            
                
            }
        }
    }
    
    




struct  Landmark : Identifiable{
    
    
    var id = UUID().uuidString
    var landmarkTitle : String
    var landmarkBrief : String
    var landmarkImage : String
    var landmarkLocation : String
    var landmarkDistance : String
}
    var landmarks = [
        
        Landmark(landmarkTitle: "Madain Saleh", landmarkBrief: "It is located in the north of Madinah Province, in the area of Al-Ula, where many other fascinating archeological sites attest to the thousands of years of human occupation of the area thanks to the underground water available for millennia.", landmarkImage:"MadainSaleh",landmarkLocation: "Al-Ula",landmarkDistance:"1045 KM"),
        
        Landmark(landmarkTitle: "Madain Saleh", landmarkBrief: "It is located in the north of Madinah Province, in the area of Al-Ula, where many other fascinating archeological sites attest to the thousands of years of human occupation of the area thanks to the underground water available for millennia.", landmarkImage:"MadainSaleh",landmarkLocation: "Al-Ula",landmarkDistance:"1045 KM"),
        
        Landmark(landmarkTitle: "Madain Saleh", landmarkBrief: "It is located in the north of Madinah Province, in the area of Al-Ula, where many other fascinating archeological sites attest to the thousands of years of human occupation of the area thanks to the underground water available for millennia.", landmarkImage:"MadainSaleh",landmarkLocation: "Al-Ula",landmarkDistance:"1045 KM"),
        
        
        Landmark(landmarkTitle: "Madain Saleh", landmarkBrief: "It is located in the north of Madinah Province, in the area of Al-Ula, where many other fascinating archeological sites attest to the thousands of years of human occupation of the area thanks to the underground water available for millennia.", landmarkImage:"MadainSaleh",landmarkLocation: "Al-Ula",landmarkDistance:"1045 KM"),
        
        
        Landmark(landmarkTitle: "Madain Saleh", landmarkBrief: "It is located in the north of Madinah Province, in the area of Al-Ula, where many other fascinating archeological sites attest to the thousands of years of human occupation of the area thanks to the underground water available for millennia.", landmarkImage:"MadainSaleh",landmarkLocation: "Al-Ula",landmarkDistance:"1045 KM"),
    
        
    ]


struct CardView: View {
    var landmark : Landmark
    var body: some View {
        
        HStack(alignment:.top){
            Image(landmark.landmarkImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:100,height:100)
                .cornerRadius(10)
            
            VStack(alignment: .leading,spacing:5,content:  {
                HStack{
                    
                    Text(landmark.landmarkTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.color5)
                      
                    Spacer()
                    
                    VStack{
                        HStack(spacing:20){
                            Text(landmark.landmarkLocation)
                                .font(.caption)
                                .foregroundColor(.color5)
                           
                            
                        }
                        Text(landmark.landmarkDistance)
                            .font(.system(size:8))
                            .foregroundColor(.color5)
                    }
            
                       Image("pin")
                        .resizable()
                        .frame(width:20,height:20)
                        .foregroundColor(.color5)
                      
                        
                
                }
                
                Text(landmark.landmarkBrief)
                    .font(.system(size: 8))
                    .lineLimit(3)
                    .foregroundColor(.color5)
                    
                    .padding(.vertical)
            })
    
        }
        
        .frame(width:347,height:100)
        .background(Color.white)
        .overlay(
                           RoundedRectangle(cornerRadius:8)
                           .stroke(Color.color2,lineWidth:1)
                                                         )
        
       
    }
}


    
    #Preview {
        Attractions()
    }

