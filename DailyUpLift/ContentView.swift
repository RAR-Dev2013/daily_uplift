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
                    
                        
                        Color(red: 255 / 255, green: 200 / 255, blue: 221 / 255)   // Deep teal bottom
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
                        .foregroundColor(Color.black)
                    Spacer()
                    
                    //First Daily Lift
                    Text(welcomeMessage)
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(Color.black)
                    
                    
                    Spacer()
                    
//                    Button to generate daily lift
//                    Button("DAILY LIFT") {
//                        isHomeScreen = false
//                        currentQuote = quotes.randomElement()!
//                        
//                    }
//                    .font(.system(size: 45, weight: .semibold))
//                    .background(
//                                Color(red: 162/255, green: 210/255, blue: 255/255)
//                            )
//                    .foregroundColor(.black)
//                    .cornerRadius(50)
//                    Spacer()
                    
                    
                    Button(action: {
                        isHomeScreen = false
                        currentQuote = quotes.randomElement()!
                    }) {
                        Text("Daily Lift")
                            .font(.system(size: 40, weight: .semibold))
                            .padding(.vertical, 10)
                            .padding(.horizontal, 10)
                            .foregroundColor(.black)
                            .cornerRadius(100)
                    }
                    .background(
                                Color(red: 162/255, green: 210/255, blue: 255/255)
                            )
                    .cornerRadius(50)
                    
                
                    
                    //Footer Text
                    Text("Built by: RARE_Dev")
                        .font(.footnote)
                    
                } else {
                    
                    //DAILY LIFT PAGE
                    
                    //New generated quote
                    Text(currentQuote)
                        .font(.system(size: 30, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    //Button generates new quote
                    Button(action: {
                        isHomeScreen = false
                        currentQuote = quotes.randomElement()!
                    }) {
                        Text("Another Lift")
                            .font(.system(size: 40, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.vertical,20)
                            .padding(.horizontal, 20)
                            .cornerRadius(100)
                    }
                    .background(
                        Color(red: 162/255, green: 210/255, blue: 255/255)
                    )
                    .cornerRadius(50)
                      
                    
                    //Button returns user home
                    Button(action: {
                        isHomeScreen = true
                    }) {
                        Text("Home")
                            .font(.system(size: 40, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.vertical,20)
                            .padding(.horizontal, 20)
                            .cornerRadius(100)
                    }
                    .background(
                        Color(red: 162/255, green: 210/255, blue: 255/255)
                    )
                    .cornerRadius(50)
                    
                    
                    
                }
                
            }
            
            
            
        }
        
        
    }
    
}

#Preview {
    ContentView()
}


//User will See WELCOME

//USER WILL ONLY SEE BUTTON CALLED DAILY LIFT

//ONCE USER Presses button then the following happens
    //WELCOME Goes away
    //quote appears in the middle of the screen
    //button called "Daily Lift" goes below quote and if pressed a different quote appears.
    //Welcome button appears below

//If Welcome button is clicked then the home screen appears again.
