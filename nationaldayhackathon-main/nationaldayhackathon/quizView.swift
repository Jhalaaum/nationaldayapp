import SwiftUI

struct QuizQuestion {
    var questionText: String
    var option1: String
    var option2: String
    var option3: String
    var option4: String
    var correctOption: String
}

struct quizView: View {
    let questions: [QuizQuestion] = [
        QuizQuestion(
            questionText: "What is Orchard Road known for?",
            option1: "Museums and art galleries",
            option2: "Famous shopping street with retail outlets, restaurants, and entertainment venues",
            option3: "Nature reserves and hiking trails",
            option4: "Historic landmarks and monuments",
            correctOption: "Famous shopping street with retail outlets, restaurants, and entertainment venues"
        ),
        QuizQuestion(
            questionText: "When did the Singapore Zoo open?",
            option1: "1995",
            option2: "2001",
            option3: "1973",
            option4: "1988",
            correctOption: "1973"
        ),
        QuizQuestion(
            questionText: "What is Sentosa known for?",
            option1: "Theme parks and movie-themed rides",
            option2: "Wildlife exhibits and naturalistic displays",
            option3: "Beaches, attractions, and entertainment options",
            option4: "Iconic integrated resort with a rooftop infinity pool",
            correctOption: "Beaches, attractions, and entertainment options"
        ),
        QuizQuestion(
            questionText: "What is the main attraction of the Singapore Flyer?",
            option1: "Water park and water sports activities",
            option2: "Skydiving experience",
            option3: "Giant Ferris wheel offering panoramic views of the city",
            option4: "Zoo and wildlife sanctuary",
            correctOption: "Giant Ferris wheel offering panoramic views of the city"
        ),
        QuizQuestion(
            questionText: "Where is Universal Studios Singapore located?",
            option1: "Orchard Road",
            option2: "Marina Bay Sands",
            option3: "Singapore Zoo",
            option4: "Sentosa Island",
            correctOption: "Sentosa Island"
        ),
        QuizQuestion(
            questionText: "What is the nickname for Apple's Singapore office located at the Marina Bay Sands?",
            option1: "Floating Apple Office",
            option2: "Marina Bay Sands Office",
            option3: "Apple Bay Sands",
            option4: "Tech Oasis",
            correctOption: "Floating Apple Office"
        ),
        QuizQuestion(
            questionText: "What is the Esplanade in Singapore primarily known for?",
            option1: "Beachfront resort and spa",
            option2: "Performing arts center and cultural events",
            option3: "Nature and wildlife reserve",
            option4: "Modern art and contemporary exhibitions",
            correctOption: "Performing arts center and cultural events"
        ),
        QuizQuestion(
            questionText: "What does Marina Bay Sands consist of?",
            option1: "Hotel and shopping mall",
            option2: "Beachfront resort and casino",
            option3: "Theme park and entertainment venues",
            option4: "Hotel, casino, shopping malls, and rooftop infinity pool",
            correctOption: "Hotel, casino, shopping malls, and rooftop infinity pool"
        ),
        QuizQuestion(
            questionText: "What features can be found in Gardens By The Bay?",
            option1: "Wildlife sanctuary and botanical garden",
            option2: "Futuristic Supertrees and beautiful gardens",
            option3: "Traditional sculptures and monuments",
            option4: "Adventure park with zip lines and treehouses",
            correctOption: "Futuristic Supertrees and beautiful gardens"
        ),
        QuizQuestion(
            questionText: "What is the Merlion?",
            option1: "A mythical creature from Singaporean folklore",
            option2: "An iconic symbol of Singapore with the head of a lion and the body of a fish",
            option3: "A famous art installation on Orchard Road",
            option4: "A natural landmark on Sentosa Island",
            correctOption: "An iconic symbol of Singapore with the head of a lion and the body of a fish"
        )
    ]
    @Environment(\.dismiss) var dismiss
    @State private var showAlert = false
    @State private var wasRight = false
    @State private var index = 0
    @State private var showSheet = false
    @State private var score = 0
    @State private var showSheet2 = false

    
    var body: some View {
        VStack {
            Text(questions[index].questionText)
                .padding()
                .multilineTextAlignment(.center)
            
            VStack {
                HStack {
                    Button {
                        checkAnswer(questions[index].option1)
                    } label: {
                        Text(questions[index].option1)
                            .padding()
                    }
                    
                    Button {
                        checkAnswer(questions[index].option2)
                    } label: {
                        Text(questions[index].option2)
                            .padding()
                    }
                }
                HStack {
                    Button {
                        checkAnswer(questions[index].option3)
                    } label: {
                        Text(questions[index].option3)
                            .padding()
                    }
                    
                    Button {
                        checkAnswer(questions[index].option4)
                    } label: {
                        Text(questions[index].option4)
                            .padding()
                    }
                }
            }
        }
        .interactiveDismissDisabled()
        .padding()
        .alert(wasRight ? "You got that right!!!" : "You got that wrong...", isPresented: $showAlert) {
            Button("Next Question") {
                index += 1
                if index == questions.count {
                    showSheet = true
                    showSheet2 = true
                    index = 0
                }
            }
        }
        .sheet(isPresented: $showSheet) {
            ScoreView(score: score, total: questions.count)
        }
        .fullScreenCover(isPresented: $showSheet2) {
            summaryView()
        }
    }
    
    private func checkAnswer(_ selectedOption: String) {
        showAlert = true
        if selectedOption == questions[index].correctOption {
            wasRight = true
            score += 1
        } else {
            wasRight = false
        }
    }
}

struct quizView_Previews: PreviewProvider {
    static var previews: some View {
        quizView()
    }
}

struct ScoreView: View {
    var score: Int
    var total: Int
    
    var body: some View {
        VStack {
            Text("Your score is \(score)/\(total)")
                .font(.largeTitle)
            if score < total - 3 {
                Text("Wow you're bad at this")
            }
            if score == total {
                Text("Waaaooowwww")
            }
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(score: 3, total: 10)
    }
}
