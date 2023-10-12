//
//  introPage.swift
//  EqletApp
//
//  Created by Razan Alabdulkarim on 26/03/1445 AH.
//

import SwiftUI

struct IntroPage: View {
    var body: some View {
        ZStack{
            Image("introBG")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(Color.clear)
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
                .padding(.leading, 15)
        }
    }
}

struct IntroPage_Previews: PreviewProvider {
    static var previews: some View {
        IntroPage()
    }
}

