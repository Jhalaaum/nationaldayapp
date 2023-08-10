import SwiftUI

struct OrchardRoadView: View {
    var body: some View {
        VStack {
            Image("orchard_road") // Make sure the image "orchard_road.jpg" is added to your asset catalog
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Orchard Road")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Text("Orchard Road is a famous shopping street in Singapore, lined with numerous retail outlets, restaurants, and entertainment venues. It is a major shopping and lifestyle destination for both locals and tourists.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()

        }
        .navigationTitle("Orchard Road History")
    }
}

struct OrchardRoadView_Previews: PreviewProvider {
    static var previews: some View {
        OrchardRoadView()
    }
}
