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
        
        
        Landmark(landmarkTitle: "Jubbah", landmarkBrief: "Jubbah, located 90 km north of the city of Ha’il is the most famous rock art site in Saudi Arabia. The carvings that can be found on the Jibal Umm Sinman cover a wide range of representations as well as a large period of time with some carving possibly being 10 000 years old. Indeed, human representations are found along with cattle, ibexes, oryxes, deers, gazelles, horses, but also lions and ostriches. Camels are probably the latest to populate both this area and the walls of the surrounding rocks.", landmarkImage:"Jubbah",landmarkLocation: "Hail",landmarkDistance:"732 KM"),
        
        Landmark(landmarkTitle: "Marid Castle", landmarkBrief: "The castle Marid (which means “the rebel” in Arabic) stands on a natural limestone outcrop overlooking the valley where the ancient oasis lies. Its position, occupying what appears to have been a genuine acropolis, suggests that this must have been the site of one of the oldest settlements at Dumat al-Jandal, dating at least back to Nabatean times.", landmarkImage:"MaridCastle",landmarkLocation: "Al-Jawf",landmarkDistance:"946 KM"),
        
        
        Landmark(landmarkTitle: "Madain Saleh", landmarkBrief: "It is located in the north of Madinah Province, in the area of Al-Ula, where many other fascinating archeological sites attest to the thousands of years of human occupation of the area thanks to the underground water available for millennia.", landmarkImage:"MadainSaleh",landmarkLocation: "Al-Ula",landmarkDistance:"1045 KM"),
        
        Landmark(landmarkTitle: "Jebel Al-Lawz", landmarkBrief: "The Jebel Al-Lawz, whose name means the almond mountain in Arabic, is one of the most mythical mountains of the Kingdom of Saudi Arabia. Most people think that Saudi Arabia is just a vast extent of sand dunes but with its summit at 2,549 meters above sea level Jebel Al-Lawz is the highest mountain of Tabuk Province", landmarkImage:"JabalAllawz",landmarkLocation: "Tabuk",landmarkDistance:"1572 KM"),
        
    
   
        Landmark(landmarkTitle: "Mugha’ir Shu’ayb", landmarkBrief: "Madyan is an archeological site located in the northwestern Arabian Peninsula, in the region of Tabuk, Saudi Arabia. The place consists of houses that have been cut from huge rocks and can be dated back to 2000 BC. It is one of the few sites that are famous for the Prophets that were sent there. This particular place signifies the name of Prophet Shoaib Peace Be Upon Him. ", landmarkImage:"Mugha’ir Shu’ayb",landmarkLocation: "Tabuk",landmarkDistance:"1581 KM"),
    
        
    ]


struct CardView: View {
    var landmark : Landmark
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
        HStack(alignment:.top){
            Image(landmark.landmarkImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:100,height:100)
                .cornerRadius(10)
            
            VStack(alignment: .leading,spacing:5,content:  {
                HStack(spacing:5){
                    
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
            
                       Image("Bitmap")
                        .resizable()
                        .frame(width:16.84,height:20)
                        .foregroundColor(.color5)
                
                        .padding(.trailing)
                
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
        })
       
    }
}


    
    #Preview {
        Attractions()
    }

