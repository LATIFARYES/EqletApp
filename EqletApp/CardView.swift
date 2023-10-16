//
//  CardView.swift
//  EqletApp
//
//  Created by Wajd Alhadlaq on 30/03/1445 AH.
//

import SwiftUI

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

struct  Landmark : Identifiable{
    
    
    var id = UUID().uuidString
    var landmarkTitle : String
    var landmarkBrief : String
    var landmarkImage : String
    var landmarkLocation : String
    var landmarkDistance : String
}
    var Northernlandmarks = [
        
        
        Landmark(landmarkTitle: "Jubbah", landmarkBrief: "Jubbah, located 90 km north of the city of Ha’il is the most famous rock art site in Saudi Arabia. The carvings that can be found on the Jibal Umm Sinman cover a wide range of representations as well as a large period of time with some carving possibly being 10 000 years old. Indeed, human representations are found along with cattle, ibexes, oryxes, deers, gazelles, horses, but also lions and ostriches. Camels are probably the latest to populate both this area and the walls of the surrounding rocks.", landmarkImage:"Jubbah",landmarkLocation: "Hail",landmarkDistance:"732 KM"),
        
        Landmark(landmarkTitle: "Marid Castle", landmarkBrief: "The castle Marid (which means “the rebel” in Arabic) stands on a natural limestone outcrop overlooking the valley where the ancient oasis lies. Its position, occupying what appears to have been a genuine acropolis, suggests that this must have been the site of one of the oldest settlements at Dumat al-Jandal, dating at least back to Nabatean times.", landmarkImage:"MaridCastle",landmarkLocation: "Al-Jawf",landmarkDistance:"946 KM"),
        
        
        Landmark(landmarkTitle: "Madain Saleh", landmarkBrief: "It is located in the north of Madinah Province, in the area of Al-Ula, where many other fascinating archeological sites attest to the thousands of years of human occupation of the area thanks to the underground water available for millennia.", landmarkImage:"MadainSaleh",landmarkLocation: "Al-Ula",landmarkDistance:"1045 KM"),
        
        Landmark(landmarkTitle: "Jebel Al-Lawz", landmarkBrief: "The Jebel Al-Lawz, whose name means the almond mountain in Arabic, is one of the most mythical mountains of the Kingdom of Saudi Arabia. Most people think that Saudi Arabia is just a vast extent of sand dunes but with its summit at 2,549 meters above sea level Jebel Al-Lawz is the highest mountain of Tabuk Province", landmarkImage:"JabalAllawz",landmarkLocation: "Tabuk",landmarkDistance:"1572 KM"),
        
    
   
        Landmark(landmarkTitle: "Mugha’ir Shu’ayb", landmarkBrief: "Madyan is an archeological site located in the northwestern Arabian Peninsula, in the region of Tabuk, Saudi Arabia. The place consists of houses that have been cut from huge rocks and can be dated back to 2000 BC. It is one of the few sites that are famous for the Prophets that were sent there. This particular place signifies the name of Prophet Shoaib Peace Be Upon Him. ", landmarkImage:"Mugha’ir Shu’ayb",landmarkLocation: "Tabuk",landmarkDistance:"1581 KM"),
    
        
    ]

var Easternlandmarks = [
    
    
    Landmark(landmarkTitle: "Tarout Castle", landmarkBrief:"Tarout Castle, situated on Tarout Island in the Eastern Province of Saudi Arabia, is a historically significant fortress with roots dating back to the 3rd millennium BC during the Dilmun civilization.", landmarkImage:"TaroutCastle",landmarkLocation: "Al-Qatif",landmarkDistance:"429 KM"),
    
    Landmark(landmarkTitle: "Muhaires castle", landmarkBrief:"Muhaires castle located in Al-Ahsa governorate , at the eastern region of Saudi Arabia.[1] the castle was built by Al-Imam Saud bin Abdul-Aziz on the top of a hill at 1208 Hijri for military purposes.", landmarkImage:"muhairesCastle",landmarkLocation: "Al-Mubarraz",landmarkDistance:"305 KM"),
    
    
    Landmark(landmarkTitle: "Sahud Castle", landmarkBrief: "Sahud Castle is considered one of the greatest historical and architectural treasures located in the city of Al-Mubarraz and one of the most famous tourist attractions in the Al-Ahsa region of the Kingdom.", landmarkImage:"SahoudCastle",landmarkLocation: "Al-Mubarraz",landmarkDistance:"324 KM"),
    
    Landmark(landmarkTitle: "Altawi’a Tower", landmarkBrief: "The Al- Altawi’a Tower, also known as Altawi’a Fortress or Altawi’a  Castle, is a defensive tower located in the heart of Al-Jubail Governorate in Saudi Arabia. It is the only symbolic historical heritage landmark in the Al-Jubail Governorate and serves as evidence of the early days of the establishment of Al-Jubail, as it is associated with the era of King Abdulaziz Al Saud.", landmarkImage:"AltawiaaTower",landmarkLocation: "Al- Jubail",landmarkDistance:"476 KM"),
    


    Landmark(landmarkTitle: "Albaia House", landmarkBrief: "The Bayt Al-Bay'a, also known as Bayt Al-Mulla, is one of the most significant landmarks in Al-Ahsa city, witnessing the most prominent and important events before and during the unification of the Kingdom of Saudi Arabia ", landmarkImage:"AlbaiaHouse",landmarkLocation: "Al-Hafouf",landmarkDistance:"294 KM"),

    
]

var Centrallandmarks = [
    
    
    Landmark(landmarkTitle: "Jubbah", landmarkBrief: "Jubbah, located 90 km north of the city of Ha’il is the most famous rock art site in Saudi Arabia. The carvings that can be found on the Jibal Umm Sinman cover a wide range of representations as well as a large period of time with some carving possibly being 10 000 years old. Indeed, human representations are found along with cattle, ibexes, oryxes, deers, gazelles, horses, but also lions and ostriches. Camels are probably the latest to populate both this area and the walls of the surrounding rocks.", landmarkImage:"Jubbah",landmarkLocation: "Hail",landmarkDistance:"732 KM"),
    
    Landmark(landmarkTitle: "Marid Castle", landmarkBrief: "The castle Marid (which means “the rebel” in Arabic) stands on a natural limestone outcrop overlooking the valley where the ancient oasis lies. Its position, occupying what appears to have been a genuine acropolis, suggests that this must have been the site of one of the oldest settlements at Dumat al-Jandal, dating at least back to Nabatean times.", landmarkImage:"MaridCastle",landmarkLocation: "Al-Jawf",landmarkDistance:"946 KM"),
    
    
    Landmark(landmarkTitle: "Madain Saleh", landmarkBrief: "It is located in the north of Madinah Province, in the area of Al-Ula, where many other fascinating archeological sites attest to the thousands of years of human occupation of the area thanks to the underground water available for millennia.", landmarkImage:"MadainSaleh",landmarkLocation: "Al-Ula",landmarkDistance:"1045 KM"),
    
    Landmark(landmarkTitle: "Jebel Al-Lawz", landmarkBrief: "The Jebel Al-Lawz, whose name means the almond mountain in Arabic, is one of the most mythical mountains of the Kingdom of Saudi Arabia. Most people think that Saudi Arabia is just a vast extent of sand dunes but with its summit at 2,549 meters above sea level Jebel Al-Lawz is the highest mountain of Tabuk Province", landmarkImage:"JabalAllawz",landmarkLocation: "Tabuk",landmarkDistance:"1572 KM"),
    


    Landmark(landmarkTitle: "Mugha’ir Shu’ayb", landmarkBrief: "Madyan is an archeological site located in the northwestern Arabian Peninsula, in the region of Tabuk, Saudi Arabia. The place consists of houses that have been cut from huge rocks and can be dated back to 2000 BC. It is one of the few sites that are famous for the Prophets that were sent there. This particular place signifies the name of Prophet Shoaib Peace Be Upon Him. ", landmarkImage:"Mugha’ir Shu’ayb",landmarkLocation: "Tabuk",landmarkDistance:"1581 KM"),

    
]

var Southernlandmarks = [
    
    
    Landmark(landmarkTitle: "Jubbah", landmarkBrief: "Jubbah, located 90 km north of the city of Ha’il is the most famous rock art site in Saudi Arabia. The carvings that can be found on the Jibal Umm Sinman cover a wide range of representations as well as a large period of time with some carving possibly being 10 000 years old. Indeed, human representations are found along with cattle, ibexes, oryxes, deers, gazelles, horses, but also lions and ostriches. Camels are probably the latest to populate both this area and the walls of the surrounding rocks.", landmarkImage:"Jubbah",landmarkLocation: "Hail",landmarkDistance:"732 KM"),
    
    Landmark(landmarkTitle: "Marid Castle", landmarkBrief: "The castle Marid (which means “the rebel” in Arabic) stands on a natural limestone outcrop overlooking the valley where the ancient oasis lies. Its position, occupying what appears to have been a genuine acropolis, suggests that this must have been the site of one of the oldest settlements at Dumat al-Jandal, dating at least back to Nabatean times.", landmarkImage:"MaridCastle",landmarkLocation: "Al-Jawf",landmarkDistance:"946 KM"),
    
    
    Landmark(landmarkTitle: "Madain Saleh", landmarkBrief: "It is located in the north of Madinah Province, in the area of Al-Ula, where many other fascinating archeological sites attest to the thousands of years of human occupation of the area thanks to the underground water available for millennia.", landmarkImage:"MadainSaleh",landmarkLocation: "Al-Ula",landmarkDistance:"1045 KM"),
    
    Landmark(landmarkTitle: "Jebel Al-Lawz", landmarkBrief: "The Jebel Al-Lawz, whose name means the almond mountain in Arabic, is one of the most mythical mountains of the Kingdom of Saudi Arabia. Most people think that Saudi Arabia is just a vast extent of sand dunes but with its summit at 2,549 meters above sea level Jebel Al-Lawz is the highest mountain of Tabuk Province", landmarkImage:"JabalAllawz",landmarkLocation: "Tabuk",landmarkDistance:"1572 KM"),
    


    Landmark(landmarkTitle: "Mugha’ir Shu’ayb", landmarkBrief: "Madyan is an archeological site located in the northwestern Arabian Peninsula, in the region of Tabuk, Saudi Arabia. The place consists of houses that have been cut from huge rocks and can be dated back to 2000 BC. It is one of the few sites that are famous for the Prophets that were sent there. This particular place signifies the name of Prophet Shoaib Peace Be Upon Him. ", landmarkImage:"Mugha’ir Shu’ayb",landmarkLocation: "Tabuk",landmarkDistance:"1581 KM"),

    
]

var Westernlandmarks = [
    
    
    Landmark(landmarkTitle: "Jubbah", landmarkBrief: "Jubbah, located 90 km north of the city of Ha’il is the most famous rock art site in Saudi Arabia. The carvings that can be found on the Jibal Umm Sinman cover a wide range of representations as well as a large period of time with some carving possibly being 10 000 years old. Indeed, human representations are found along with cattle, ibexes, oryxes, deers, gazelles, horses, but also lions and ostriches. Camels are probably the latest to populate both this area and the walls of the surrounding rocks.", landmarkImage:"Jubbah",landmarkLocation: "Hail",landmarkDistance:"732 KM"),
    
    Landmark(landmarkTitle: "Marid Castle", landmarkBrief: "The castle Marid (which means “the rebel” in Arabic) stands on a natural limestone outcrop overlooking the valley where the ancient oasis lies. Its position, occupying what appears to have been a genuine acropolis, suggests that this must have been the site of one of the oldest settlements at Dumat al-Jandal, dating at least back to Nabatean times.", landmarkImage:"MaridCastle",landmarkLocation: "Al-Jawf",landmarkDistance:"946 KM"),
    
    
    Landmark(landmarkTitle: "Madain Saleh", landmarkBrief: "It is located in the north of Madinah Province, in the area of Al-Ula, where many other fascinating archeological sites attest to the thousands of years of human occupation of the area thanks to the underground water available for millennia.", landmarkImage:"MadainSaleh",landmarkLocation: "Al-Ula",landmarkDistance:"1045 KM"),
    
    Landmark(landmarkTitle: "Jebel Al-Lawz", landmarkBrief: "The Jebel Al-Lawz, whose name means the almond mountain in Arabic, is one of the most mythical mountains of the Kingdom of Saudi Arabia. Most people think that Saudi Arabia is just a vast extent of sand dunes but with its summit at 2,549 meters above sea level Jebel Al-Lawz is the highest mountain of Tabuk Province", landmarkImage:"JabalAllawz",landmarkLocation: "Tabuk",landmarkDistance:"1572 KM"),
    


    Landmark(landmarkTitle: "Mugha’ir Shu’ayb", landmarkBrief: "Madyan is an archeological site located in the northwestern Arabian Peninsula, in the region of Tabuk, Saudi Arabia. The place consists of houses that have been cut from huge rocks and can be dated back to 2000 BC. It is one of the few sites that are famous for the Prophets that were sent there. This particular place signifies the name of Prophet Shoaib Peace Be Upon Him. ", landmarkImage:"Mugha’ir Shu’ayb",landmarkLocation: "Tabuk",landmarkDistance:"1581 KM"),

    
]

#Preview {
    Attractions()
}
