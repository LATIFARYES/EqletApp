//
//  PicPage.swift
//  EqletApp
//
//  Created by Raghad on 15/10/2023.
//

import SwiftUI

struct PicPage: View {
    @State private var selectedImageIndex = 0
    @State private var isVisited = false
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Image("masmak")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 270)
                        .cornerRadius(20)
                        .opacity(selectedImageIndex == 0 ? 1.0 : 0.0)
                    
                    Image("masmak2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 270)
                        .cornerRadius(20)
                        .opacity(selectedImageIndex == 1 ? 1.0 : 0.0)
                    
                    Image("masmak3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 270)
                        .cornerRadius(20)
                        .opacity(selectedImageIndex == 2 ? 1.0 : 0.0)
                    
                    HStack {
                        Button(action: {
                            withAnimation {
                                selectedImageIndex = (selectedImageIndex + 1) % 3
                            }
                        }) {
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                        }
                        .padding(.leading, 20)
                        
                        Spacer()
                    }
                }
                
                HStack {
                    Text("Al Masmak Palace")
                        .font(.title)
                        .foregroundColor(Color(hex: 0x524C41))
                        .padding()
                    
                    Spacer()
                    
                    Toggle(isOn: $isVisited){
                        Text("Visit?")
                        
                            .padding(50)
                    }
                    .padding(.trailing, 20)
                }
                
                Text("The magnificent Al Masmak Palace stands erected gracefully in the middle of Riyadh city as a tourist destination having silently witnessed great events in the history of KSA foundation. The palace was constructed in the hijri 14th century during the reign of Imam Abdullah bin Faisal as his residence and the center of power and money. The palace is a strong fort against enemies with its solid high walls. It has only two entrances and small openings in the walls for gun barrels at the time of battles. Today, the palace stands as a symbol of the history of regaining power and rule of the country displaying in its corridors the features of that era and its leaders after it had been turned into a museum in 1995/1416. The Arabic word Al Masmak means a strong thick building that had been once used as a depot for weapons and ammunitions until it was turned into a historic milestone then a museum")
                    .foregroundColor(Color(hex: 0x6A5C46))
                    .padding()
                
            }
        }
        
        .background(Color(hex: 0xFFFDFA))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension Color {
    init(hex: UInt) {
        self.init(
            red: Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8) & 0xFF) / 255.0,
            blue: Double(hex & 0xFF) / 255.0
        )
    }
}


#Preview {
    PicPage()
}
