import SwiftUI

struct SentosaView: View {
    var body: some View {
        VStack {
            Image("sentosa") // Make sure the image "sentosa.jpg" is added to your asset catalog
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            Text("Sentosa")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Text("Sentosa is a popular resort island in Singapore, known for its beaches, attractions, and entertainment options. It has been developed into a major tourist destination.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()

        }
        .navigationTitle("Sentosa History")
    }
}

struct SentosaView_Previews: PreviewProvider {
    static var previews: some View {
        SentosaView()
    }
}
