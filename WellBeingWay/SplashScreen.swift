
import SwiftUI

struct SplashScreen: View {
    @State private var opacity = 0.0
    var body: some View {
        ZStack {
            Color(red: 0.325, green: 0.776, blue: 0.902)
                .edgesIgnoringSafeArea(.all)
            VStack {
                AppLogo()
                    .padding(.bottom, 20)
                AppTextStyle(text: "WellBeingWay", font: .largeTitle, fontWeight: .bold, color: .white)
                AppTextStyle(text: "Your Path to Mental Wellness", font: .headline, fontWeight: .regular, color: .white)
                    .padding(.top, 10)
            }
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 2.0)){
                    opacity = 1.0
                }
            }
        }
    }
   
}

#Preview {
    SplashScreen()
}
