//
//  CardsView.swift
//  EqletApp
//
//  Created by Raghad on 17/10/2023.
//

import SwiftUI

struct CardView: View {
    var landmark : Landmark
    var body: some View {
        NavigationLink(destination: PicPage()){
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
    
    
    Landmark(landmarkTitle: "Al-Masmak Palace", landmarkBrief: "The magnificent Al Masmak Palace stands erected gracefully in the middle of Riyadh city as a tourist destination having silently witnessed great events in the history of KSA foundation. The palace was constructed in the hijri 14th century during the reign of Imam Abdullah bin Faisal as his residence and the center of power and money. The palace is a strong fort against enemies with its solid high walls. It has only two entrances and small openings in the walls for gun barrels at the time of battles. Today, the palace stands as a symbol of the history of regaining power and rule of the country displaying in its corridors the features of that era and its leaders after it had been turned into a museum in 1995/1416. The Arabic word Al Masmak means a strong thick building that had been once used as a depot for weapons and ammunitions until it was turned into a historic milestone then a museum.", landmarkImage:"Almasmak1",landmarkLocation: "Riyadh",landmarkDistance:"35 KM"),
    
    Landmark(landmarkTitle: "Historical Al-Diriyah", landmarkBrief: "Historic Diriyah provides you with the experience of wandering among a harmonious network of ancient areas and their monuments. Moreover, you have the opportunity to stand at the doors of the palaces that represent the beginning of an era immortalized in history. You can also enjoy many activities and events held throughout the year in Diriyah facilities..", landmarkImage:"Aldiriyah1",landmarkLocation: "Al-Diriyah",landmarkDistance:"33 KM"),
    
    
    Landmark(landmarkTitle: "Ushaiger Village", landmarkBrief: "Encased in thick walls, Ushaiger is a labyrinth of winding alleyways, shaded pathways and timber-framed walkways, crossing between hundreds of mud houses. The village is divided into districts and bisected by groves of palm trees, and includes a cluster of beautifully renovated houses. These offer a stunning example of Najdi architecture, with its distinctive triangular windows and roofs, and ornately carved wooden doors. Some still bear the names of the families who lived there.", landmarkImage:"Ushaiger1",landmarkLocation: "Ushaiger",landmarkDistance:"203 KM"),
    
    Landmark(landmarkTitle: "Al-Murabba Palace ", landmarkBrief: "When you visit Al Murabba Palace, you will notice the unique design of the foyer at the center of the palace, surrounded by all the rooms. It was designed according to the prevalent traditional designs at the time, conveying unique architecture to its modern day visitors. The nature surrounding the palace has now left its mark on its components. The rooms are decorated with trunks of tamarisk all the way to the ceilings, and adorned with palm leaves and branches. The bases of the palace are made of stone, and the walls of mud bricks mixed with straw. The walls are adorned with inscriptions and motifs printed on plaster. Despite the simplicity of the architecture, the beauty of the palace is evident in the zigzagging pillars supporting the rooms and hallways of the palace.", landmarkImage:"Almurabba1",landmarkLocation: "Riyadh",landmarkDistance:"31 KM"),
    


    Landmark(landmarkTitle: "Tuwaiq Mountain ", landmarkBrief: "The most popular sightseeing spot an hour away from Riyadh which are said to be familiar to every citizen of Saudi Arabia, are among the most fascinating mountain ranges in the world.", landmarkImage:"Tuwaiq1",landmarkLocation: "Riyadh",landmarkDistance:"88 KM"),

    
]

var Southernlandmarks = [
    
    
    Landmark(landmarkTitle: "Zee Al-Ayn", landmarkBrief: "Located down the cliffs of the City of Al-Bahah it gathers unique features that make this place enchanting - the most striking being the whiteness of the marble hill the village was built on, which contrasts with the darker shades of the grandiose Sarawat mountains in the background.", landmarkImage:"ZeeAlAyn",landmarkLocation: "Al-Baha",landmarkDistance:"936 KM"),
    
    Landmark(landmarkTitle: "Al-Moanis Village", landmarkBrief: "The old village of Dhahran Al-Janub is a wonderful testimony to old mud-brick traditional constructions of the Kingdom of Saudi Arabia. It is located at the crossroads of three places known for its specific traditional buildings as it lays on the eastern edge of the Aseer Province just 15 kilometers away from both the Najran Province and the Republic of Yemen.", landmarkImage:"Al-moanisVillage",landmarkLocation: "Dhahran Al-Janub",landmarkDistance:"1056 KM"),
    
    
    Landmark(landmarkTitle: "Rijal Alma’", landmarkBrief: "The heritage village of Rijal Almaa is a traditional village located in the Rijal Almaa Governorate in the Aseer region in the southwest of Saudi Arabia. Its history dates back over 700 years. The village played a significant role as it connected travelers coming from Yemen to the Levant through Mecca and Medina, making it an important commercial center. The village consists of around 60 buildings constructed from natural stones, mud, and wood. The site also includes a museum established by the village's residents.", landmarkImage:"RijalAlmaa",landmarkLocation: "Abha",landmarkDistance:"1093 KM"),
    
    Landmark(landmarkTitle: "Abu As-Su’ud Village", landmarkBrief: " Najran traditional Abu As-Su'ud village is a delightful experience that brings back in time. One can feel there the ancient Arabian life style of people living in this place just few decades ago and that is still proudly kept vivid by the people of modern Najran.", landmarkImage:"AbuSauud",landmarkLocation: "Najran",landmarkDistance:"1572 KM"),
    


    Landmark(landmarkTitle: "Adosareyah Castle", landmarkBrief: "The historic Al Dosariyah Castle is located on a mountain overlooking the port of Jazan. It was built in 1933 for military purposes, and its elevated location provides a clear aerial view of the port and the horizon. The castle was built with a military character and defensive systems such as protection walls installed at the entrances, an observation room on the upper floor, and openings in the walls for observation and shooting.", landmarkImage:"AdosareyahCastle",landmarkLocation: " Jazan",landmarkDistance:"1167 KM"),

    
]

var Westernlandmarks = [
    
    Landmark(landmarkTitle: "Hejaz Railway", landmarkBrief: "The Al Madinah Museum, also known as the Hejaz Railway Museum is one of the must visit museums in the Blessed City of Madinah. It is located on the grounds of the historic Ottoman railway station that originally connected Damascus to Madinah between 1906-1920.  The entry to the museum is currently free.", landmarkImage:"HejazRailway",landmarkLocation: "Al-Madinah",landmarkDistance:"834 KM"),
    
    Landmark(landmarkTitle: "Khaybar", landmarkBrief:"The old village of Khaybar is made of ruins of abandoned buildings whose base (probably more ancient) is built with stones and the upper part is made of mud-bricks. Mosques, shops, houses and palaces that were inhabited until the seventies are still standing today.", landmarkImage:"Khaybar",landmarkLocation: "Al-Madinah",landmarkDistance:"897 KM"),
    
    Landmark(landmarkTitle: "Jeddah’s Heritage", landmarkBrief:"Jeddah is home of a very old traditional of architecture proper to the Hejaz that local artesans brought to a level of a refined building art and technology. Also the building activities in Egypt across the Red Sea influenced the construction skills of the people of Hejaz. For example, the famous Rowshans and Mashrabiyas (projected screened windows) which are prominent features of Hejaz architecture came from Egypt through Jeddah.", landmarkImage:"Jeddah",landmarkLocation: "Jeddah",landmarkDistance:"946 KM"),
    
    Landmark(landmarkTitle: "King Abdulaziz Palace", landmarkBrief:"King Abdulaziz Palace in Al-Muwayh is one of the palaces built during the reign of King Abdulaziz Al Saud. It is located in the town of Al-Muwayh, northeast of the city of Taif.", landmarkImage:"KingAbdulazizPalace",landmarkLocation: "Al-Taif",landmarkDistance:"1145 KM"),
    
    Landmark(landmarkTitle: "Al-Kalada Village", landmarkBrief:"Al-Kalada village is a historical and archaeological village in Bani Saad, south of Taif Governorate, located in the Makkah Al-Mukarramah region, west of the Kingdom of Saudi Arabia.The origin of its name goes back to the Kalda tribe, and the first to inhabit it was the Arab doctor Khaldun Ibn Kalda, and it was said that the Arab doctor Al-Harith Ibn Kalda, as the village was attributed to him, and his name became known as a doctor to the Arabs and he gained practice experience in knowledge of medicine.", landmarkImage:"alkalada",landmarkLocation: "Al-Taif",landmarkDistance:"883 KM"),
]

#Preview {
    Attractions()
}

