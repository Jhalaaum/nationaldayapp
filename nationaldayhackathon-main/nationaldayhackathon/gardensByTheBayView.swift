import SwiftUI

struct GardensByTheBayView: View {
    var body: some View {
        VStack {
            Image("gardens_by_the_bay") // Make sure the image "gardens_by_the_bay.jpg" is added to your asset catalog
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Gardens By The Bay")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Text("Gardens By The Bay is a large public park that features futuristic Supertrees and beautiful gardens. It was opened in 2012 as part of Singapore's efforts to enhance its green spaces and promote sustainability.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()

        }
        .navigationTitle("Gardens By The Bay History")
    }
}

struct GardensByTheBayView_Previews: PreviewProvider {
    static var previews: some View {
        GardensByTheBayView()
    }
}
