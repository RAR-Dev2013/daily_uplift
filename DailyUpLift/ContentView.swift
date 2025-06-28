import SwiftUI


struct ContentView: View {
    var quotes = ["HI CAN I SEE THIS! The only way to do great work is to love what you do.", "Your time is limited, don't waste it living someone else's life.", "Believe you can and you're halfway there."]


@State private var currentQuote = "GO YOU"

    
    
    var body: some View {
        VStack {
            Spacer()
            Text(quotes.randomElement()!)
                .bold()
                .font(.system(size: 40, weight: .bold))
            Spacer()
            Text(currentQuote)
                .font(.title)
            Button("Another Quote") {
                currentQuote = quotes.randomElement()!
            }
            Text("Built by: Rox and CJ")
                .font(.footnote)
                .padding(.bottom)
        }
    }
}
