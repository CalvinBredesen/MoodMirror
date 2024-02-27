//
//  LogEmotionScreen.swift
//  StringManipulation
//
//  Created by Calvin Bredesen24 on 2/13/24.
//

import SwiftUI

struct LogEmotionScreen: View {
    
    @State private var inputText: String = ""
    @State private var text: String = ""
    @State private var quote: String = ""
    @EnvironmentObject private var vm: MoodViewModel
    
    @State private var submitted: Bool = false
    
    
    var body: some View {
        
        ZStack{
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            AnimatedFlower()
                .offset(y: -150)
            
            VStack(alignment: .center){
                
                if (submitted == false){
                    VStack{
                        
                        
                        Text("Describe your feeling or mood")
                            .bold()
                        TextField("", text: $inputText, prompt: Text("Type message here...").foregroundColor(.black))
                            .padding()
                            .offset(x: 75)
                        
                        
                        if  (inputText != ""){
                            Button {
                                withAnimation{
                                    
                                    
                                    text = vm.analyzeSentiment(text: inputText)
                                    quote = vm.getQuote(sentiment: text)
                                    submitted.toggle()
                                }
                                
                            } label: {
                                Text("Continue")
                                    .font(.headline)
                                    .frame(width: 200, height: 35)
                                    .background(.blue)
                                    .cornerRadius(5)
                                    .foregroundColor(.black)
                                    .opacity(0.8)
                                
                                
                            }
                            
                        }
                        
                    }
                }
                else{
                    
                    VStack(alignment: .center){
                        
                        
                        Text("It sounds like you are feeling:")
                        Text(text)
                            .padding()
                            .bold()
                        Text(quote)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width - 25)
                            .shadow(color: Color.white.opacity(0.5), radius: 7, x: 2, y: 2)
                            .background(.regularMaterial)
                            .cornerRadius(5)
                        
                        
                        
                    }
                    
                }
            }
            
        }
}
    
}

#Preview {
    LogEmotionScreen()
        .environmentObject(MoodViewModel())
}
