import SwiftUI

struct summaryView: View {
    @State private var a = false
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: MerlionViewSummary()) {
                    Text("Merlion Summary")
                }
                
                NavigationLink(destination: GardensByTheBayViewSummary()) {
                    Text("Gardens by the Bay Summary")
                }
                
                NavigationLink(destination: MarinaBaySandsViewSummary()) {
                    Text("Marina Bay Sands Summary")
                }
                
                NavigationLink(destination: EsplanadeViewSummary()) {
                    Text("Esplanade Summary")
                }
                
                NavigationLink(destination: FloatingAppleOfficeViewSummary()) {
                    Text("Floating Apple Office Summary")
                }
                
                NavigationLink(destination: UniversalStudiosViewSummary()) {
                    Text("Universal Studios Summary")
                }
                
                NavigationLink(destination: SentosaViewSummary()) {
                    Text("Sentosa Summary")
                }
                
                NavigationLink(destination: SingaporeFlyerViewSummary()) {
                    Text("Singapore Flyer Summary")
                }
                
                NavigationLink(destination: SingaporeZooViewSummary()) {
                    Text("Singapore Zoo Summary")
                }
                
                NavigationLink(destination: OrchardRoadViewSummary()) {
                    Text("Orchard Road Summary")
                }
                
            }
            .navigationBarTitle("Summaries")
        }
        VStack{
            Button{
                a = true
            } label: {
                Text("Back to Home Page")
            }
        }
        .fullScreenCover(isPresented: $a) {
            ContentView()
        }
    }
}


struct MerlionViewSummary: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("merlion")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 16)
            
            Text("The Merlion is the iconic symbol of Singapore, representing its origins as a fishing village. It has the head of a lion and the body of a fish.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(Color(.systemBackground)) // Use your preferred background color here
        .navigationBarTitle("Merlion")
    }
}

struct GardensByTheBayViewSummary: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("gardens_by_the_bay")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 16)
            
            Text("Gardens by the Bay is a horticultural attraction in Singapore with stunning Supertree Grove and climate-controlled conservatories.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(Color(.systemBackground)) // Use your preferred background color here
        .navigationBarTitle("Gardens by the Bay")
    }
}

struct MarinaBaySandsViewSummary: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("marina_bay_sands")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 16)
            
            Text("Marina Bay Sands is an integrated resort with three towers, SkyPark, luxury hotel, convention center, casino, shopping malls, and infinity pool.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(Color(.systemBackground)) // Use your preferred background color here
        .navigationBarTitle("Marina Bay Sands")
    }
}

struct EsplanadeViewSummary: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("esplanade")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 16)
            
            Text("The Esplanade is a performing arts center with unique spherical domes, resembling a durian fruit, housing theaters and concert halls.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(Color(.systemBackground)) // Use your preferred background color here
        .navigationBarTitle("Esplanade")
    }
}

struct FloatingAppleOfficeViewSummary: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("floating_apple_office")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 16)
            
            Text("A conceptual design proposal for an Apple retail store in Singapore, featuring a futuristic floating structure on water.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(Color(.systemBackground)) // Use your preferred background color here
        .navigationBarTitle("Floating Apple Office")
    }
}

struct UniversalStudiosViewSummary: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("universal_studios")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 16)
            
            Text("Universal Studios Singapore is a theme park on Sentosa Island, offering rides, attractions, and shows based on Universal Studios movies.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(Color(.systemBackground)) // Use your preferred background color here
        .navigationBarTitle("Universal Studios")
    }
}

struct SentosaViewSummary: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("sentosa")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 16)
            
            Text("Sentosa is a resort island with beaches, theme parks, historical sites, nature attractions, and a range of recreational activities.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(Color(.systemBackground)) // Use your preferred background color here
        .navigationBarTitle("Sentosa")
    }
}

struct SingaporeFlyerViewSummary: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("singapore_flyer")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 16)
            
            Text("The Singapore Flyer is a giant Ferris wheel in Marina Bay, offering panoramic views of the city skyline and surrounding areas.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(Color(.systemBackground)) // Use your preferred background color here
        .navigationBarTitle("Singapore Flyer")
    }
}

struct SingaporeZooViewSummary: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("singapore_zoo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 16)
            
            Text("The Singapore Zoo is a world-renowned zoological garden, home to over 2,800 animals, promoting wildlife conservation.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(Color(.systemBackground)) // Use your preferred background color here
        .navigationBarTitle("Singapore Zoo")
    }
}

struct OrchardRoadViewSummary: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("orchard_road")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 16)
            
            Text("Orchard Road is a famous shopping and entertainment district in Singapore with upscale retail outlets and vibrant nightlife.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(Color(.systemBackground)) // Use your preferred background color here
        .navigationBarTitle("Orchard Road   ")
    }
}
