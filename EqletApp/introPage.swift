//
//  introPage.swift
//  EqletApp
//
//  Created by Razan Alabdulkarim on 26/03/1445 AH.
//

//import SwiftUI
//
//struct IntroPage: View {
//    var body: some View {
//        ZStack{
//            Image("introBG")
//                .resizable()
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
//                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//                .background(Color.clear)
//            
//            Image("logo")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 250)
//                .padding(.leading, 15)
//        }
//    }
//}
//
//struct IntroPage_Previews: PreviewProvider {
//    static var previews: some View {
//        IntroPage()
//    }
//    
//    
//}
//----------------------------------------------------------
//import SwiftUI
//
//struct IntroPage: View {
//    @State private var rotationAngle: Angle = .degrees(0) // Initial rotation angle
//
//    var body: some View {
//        ZStack {
//            Image("introBG")
//                .resizable()
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
//                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//                .background(Color.clear)
//            
//            Image("logo")
//                          .resizable()
//                          .scaledToFit()
//                          .frame(width: 250)
//                          .padding(.leading, 15)
//            
//
//            Image("clock")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 60)
//                .padding(.leading, 15)
//                .rotationEffect(rotationAngle) // Apply rotation effect
//                .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - 160) // Adjust position
//        }
//        .onAppear {
//            withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
//                self.rotationAngle = .degrees(360) // Rotate the image 360 degrees (full rotation)
//            }
//        }
//    }
//}
//
//struct IntroPage_Previews: PreviewProvider {
//    static var previews: some View {
//        IntroPage()
//    }
//}



import SwiftUI

struct IntroPage: View {
    @State private var rotationAngle: Angle = .degrees(0) // Initial rotation angle
    @State private var showNextView = false // To control the transition

    var body: some View {
        ZStack {
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

            Image("clock")
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .padding(.leading, 1)
                .rotationEffect(rotationAngle) // Apply rotation effect
                .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - 160) // Adjust position
        }
        .onAppear {
            withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                self.rotationAngle = .degrees(360) // Rotate the image 360 degrees (full rotation)
            }

            // Use DispatchQueue to transition to the next view after 5 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.showNextView = true
            }
        }
//        .background(
//            NavigationLink("", destination: NextView(), isActive: $showNextView) // Replace NextView with your destination view
//                .opacity(0) // Hide the NavigationLink
//        )
    }
}

//struct NextView: View {
//    var body: some View {
//        // Your next view here
//    }
//}

struct IntroPage_Previews: PreviewProvider {
    static var previews: some View {
        IntroPage()
    }
}

