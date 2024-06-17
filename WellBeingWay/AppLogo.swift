import SwiftUI

struct AppLogo: View {
    var body: some View {
        Image(systemName: "waveform")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .foregroundColor(.white)
            
        
    }
}

#Preview {
    AppLogo()
        
}
