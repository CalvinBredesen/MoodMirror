//
//  HomeScreen.swift
//  StringManipulation
//
//  Created by Calvin Bredesen24 on 2/13/24.
//

import SwiftUI

struct HomeScreen: View {
    
     @State private var showScreen = false
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    @State private var isSelected = false

    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack{
                Text("Log Emotion or Mood")
                    .bold()
                    .font(.system(size: 33))
                    
                Spacer()

                ButtonView(title: "Emotion", description: "How you feel right now", isSelected: $isSelected1)
                    .onTapGesture {
                        withAnimation{
                            isSelected1.toggle()
                            isSelected2 = false
                            
                            if (isSelected1 || isSelected2){
                                isSelected = true
                            } else {
                                isSelected = false
                            }
                            
                        }
                    }

                ButtonView(title: "Mood", description: "How you've felt overall today", isSelected: $isSelected2)
                    .onTapGesture {
                        withAnimation{
                            isSelected2.toggle()
                            isSelected1 = false
                            
                            if (isSelected1 || isSelected2){
                                isSelected = true
                            } else {
                                isSelected = false
                            }
                            
                        }
                    }
                
                if (isSelected1 == false && isSelected2 == false){
                    Spacer()
                }

                
                Button {
                    if (isSelected){
                        showScreen.toggle()
                    }
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .frame(width: 200, height: 35)
                        .background(isSelected ? .blue: .gray)
                        .cornerRadius(5)
                        .foregroundColor(.black)
                        .opacity(0.8)

                    
                    
                }
                .sheet(isPresented: $showScreen){
                    LogEmotionScreen()
                        //.presentationDetents([.fraction(1),.large, .large])
                }
                if (isSelected1 == true || isSelected2 == true){
                    Spacer()

                }
            }
        }
    }
}

#Preview {
    HomeScreen()
        .environmentObject(MoodViewModel())
        .environmentObject(MoodModel())
}
