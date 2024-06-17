import Foundation
import SwiftUI

struct AppTextStyle: View {
    var text: String
    var font: Font
    var fontWeight: Font.Weight
    var color: Color
    
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(fontWeight)
            .foregroundColor(color)
    }
}

struct AppTextStyle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            AppTextStyle(text: "WellBeingWay", font: .largeTitle, fontWeight: .bold, color: .white)
                .padding()
                .background(Color.black)
            AppTextStyle(text: "Your Path to Mental Wellness", font: .headline, fontWeight: .regular, color: .white)
                .padding()
                .background(Color.black)
        }
    }
    
}
