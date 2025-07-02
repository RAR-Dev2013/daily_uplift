import SwiftUI


struct ContentView: View {
    var quotes = ["HI CAN I SEE THIS! The only way to do great work is to love what you do.", "Your time is limited, don't waste it living someone else's life.", "Believe you can and you're halfway there."]

    
@State private var welcomeSign = "Welcome!"
@State private var welcomeMessage = "Ready to get inspired?"
@State private var isHomeScreen = true
@State private var currentQuote = "It always seems impossible until its done. -Nelson Mandela"
    
    
    func getRandomQuote() -> String {
        quotes.randomElement()!
    }
    
    var body: some View {
        
        ZStack {
            LinearGradient(
                    gradient: Gradient(colors: [
                    
                        Color(red: 0.95, green: 0.9, blue: 0.9), // Light aqua top
                        Color(red: 0.0, green: 0.6, blue: 0.7)   // Deep teal bottom
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
            
            VStack {
                
                if isHomeScreen {
                    
                    //Welcome Sign
                    
                    Text(welcomeSign)
                        .font(.system(size: 40, weight: .bold))
                    Spacer()
                    
                    //First Daily Lift
                    Text(welcomeMessage)
                        .font(.system(size: 30, weight: .bold))
                    
                    
                    Spacer()
                    
                    //Button to generate daily lift
                    Button("DAILY LIFT") {
                        isHomeScreen = false
                        currentQuote = quotes.randomElement()!
                        
                    }
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.black)
                    .cornerRadius(50)
                    Spacer()
                    
                    //Footer Text
                    Text("Built by: RARE_Dev")
                        .font(.footnote)
                        .padding(.bottom)
                    
                } else {
                    
                    //DAILY LIFT PAGE
                    
                    //New generated quote
                    Text(currentQuote)
                        .font(.system(size: 30, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    //Button generates new quote
                    Button("Another Lift"){
                        isHomeScreen = false
                        currentQuote = getRandomQuote()
                        
                    }
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    
                    //Button returns user home
                    Button("HOME"){
                        isHomeScreen = true
                        
                    }
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    
                    
                    
                    
                    
                }
                
            }
            
            
            
        }
        
        
    }
    
}


//User will See WELCOME

//USER WILL ONLY SEE BUTTON CALLED DAILY LIFT

//ONCE USER Presses button then the following happens
    //WELCOME Goes away
    //quote appears in the middle of the screen
    //button called "Daily Lift" goes below quote and if pressed a different quote appears.
    //Welcome button appears below

//If Welcome button is clicked then the home screen appears again.
