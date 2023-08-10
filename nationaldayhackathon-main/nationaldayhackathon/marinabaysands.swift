import SwiftUI

struct MarinaBaySandsView: View {
    var body: some View {
        VStack {
            Image("marina_bay_sands") // Make sure the image "marina_bay_sands.jpg" is added to your asset catalog
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Marina Bay Sands")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Text("Marina Bay Sands is an iconic integrated resort that opened in 2010. It consists of a hotel, a casino, shopping malls, and the famous rooftop infinity pool, offering breathtaking views of Singapore's skyline.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()

        }
        .navigationTitle("Marina Bay Sands History")
    }
}

struct MarinaBaySandsView_Previews: PreviewProvider {
    static var previews: some View {
        MarinaBaySandsView()
    }
}
