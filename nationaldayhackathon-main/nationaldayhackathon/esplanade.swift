import SwiftUI

struct EsplanadeView: View {
    var body: some View {
        VStack {
            Image("esplanade") // Make sure the image "esplanade.jpg" is added to your asset catalog
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Esplanade")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Text("The Esplanade is a performing arts center and a prominent landmark in Singapore. It was completed in 2002 and hosts various concerts, theater performances, and cultural events.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()

        }
        .navigationTitle("Esplanade History")
    }
}

struct EsplanadeView_Previews: PreviewProvider {
    static var previews: some View {
        EsplanadeView()
    }
}
