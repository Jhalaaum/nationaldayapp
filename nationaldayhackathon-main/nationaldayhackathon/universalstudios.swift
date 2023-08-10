import SwiftUI

struct UniversalStudiosView: View {
    var body: some View {
        VStack {
            Image("universal_studios") // Make sure the image "universal_studios.jpg" is added to your asset catalog
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Universal Studios")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Text("Universal Studios Singapore is a theme park located on Sentosa Island. It opened in 2010 and offers visitors a chance to experience movie-themed rides and attractions.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()

        }
        .navigationTitle("Universal Studios History")
    }
}

struct UniversalStudiosView_Previews: PreviewProvider {
    static var previews: some View {
        UniversalStudiosView()
    }
}
