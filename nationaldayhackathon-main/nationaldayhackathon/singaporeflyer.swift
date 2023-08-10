import SwiftUI

struct SingaporeFlyerView: View {
    var body: some View {
        VStack {
            Image("singapore_flyer") // Make sure the image "singapore_flyer.jpg" is added to your asset catalog
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Singapore Flyer")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Text("The Singapore Flyer is a giant Ferris wheel that opened in 2008. It offers panoramic views of the city and is one of the tallest Ferris wheels in the world.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()

        }
        .navigationTitle("Singapore Flyer History")
    }
}

struct SingaporeFlyerView_Previews: PreviewProvider {
    static var previews: some View {
        SingaporeFlyerView()
    }
}
