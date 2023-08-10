import SwiftUI

struct SingaporeZooView: View {
    var body: some View {
        VStack {
            Image("singapore_zoo") // Make sure the image "singapore_zoo.jpg" is added to your asset catalog
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Singapore Zoo")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Text("The Singapore Zoo, opened in 1973, is a renowned wildlife park known for its open and naturalistic exhibits. It aims to provide a positive and educational experience for visitors while promoting wildlife conservation.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()

        }
        .navigationTitle("Singapore Zoo History")
    }
}

struct SingaporeZooView_Previews: PreviewProvider {
    static var previews: some View {
        SingaporeZooView()
    }
}
