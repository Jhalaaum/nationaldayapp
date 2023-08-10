import SwiftUI

struct FloatingAppleOfficeView: View {
    var body: some View {
        VStack {
            Image("floating_apple_office") // Make sure the image "floating_apple_office.jpg" is added to your asset catalog
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Floating Apple Office")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Text("The Floating Apple Office is a nickname for Apple's Singapore office, located at the Marina Bay Sands. It gained attention for its unique design, resembling a floating sphere on the water.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()

        }
        .navigationTitle("Floating Apple Office History")
    }
}

struct FloatingAppleOfficeView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingAppleOfficeView()
    }
}
