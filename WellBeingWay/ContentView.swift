import SwiftUI

struct ContentView: View {
    @State private var showSplash = true
    var body: some View {
        Group {
            if showSplash {
                SplashScreen()
                
            } else {
                MainView()
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    showSplash = false
                }
            }
        }
       
    }
}
struct MainView: View {
    var body: some View {
        VStack {
            AppTextStyle(text: "Welcome to WellBeingWay!", font: .largeTitle, fontWeight: .bold, color: .black)
                .padding()
        }
    }
}
#Preview {
    ContentView()
}
