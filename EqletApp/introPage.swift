import SwiftUI

struct IntroPage: View {
    @State private var rotationAngle: Angle = .degrees(0)
    @State private var showNextView = false

    var body: some View {
        VStack{
            if showNextView{
                MapPage()
            }
            else{
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
                        .rotationEffect(rotationAngle)
                        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - 160)
                }
            }
        }
        .onAppear {
            withAnimation(Animation.linear(duration: 3).repeatForever(autoreverses: false)) {
                self.rotationAngle = .degrees(360)
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                self.showNextView = true
            }
        }
    }
}

struct IntroPage_Previews: PreviewProvider {
    static var previews: some View {
        IntroPage()
    }
}

