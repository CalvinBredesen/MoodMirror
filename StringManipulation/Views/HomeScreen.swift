//
//  HomeScreen.swift
//  StringManipulation
//
//  Created by Calvin Bredesen24 on 2/13/24.
//

import SwiftUI

struct HomeScreen: View {
    
     @State private var showScreen = false
    @State private var isSelected = false
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack{
                Text("log emotion or mood")
                Spacer()
                Text("")
                    .frame(width: UIScreen.main.bounds.width-50, height: 100)
                    .background(.black)
                    .opacity(0.3)
                    .cornerRadius(8)
                    .onTapGesture {
                        withAnimation{
                            isSelected.toggle()
                        }
                    }

                Text("")
                    .frame(width: UIScreen.main.bounds.width-50, height: 100)
                    .background(.black)
                    .opacity(0.3)
                    .cornerRadius(8)
                
                if (isSelected == false){
                    Spacer()
                }

                
                Button {
                    showScreen.toggle()
                } label: {
                    Text("Next")
                        .font(.headline)
                        .frame(width: 125, height: 35)

                    
                    
                }
                .sheet(isPresented: $showScreen){
                    LogEmotionScreen()
                        .presentationDetents([.fraction(1.5),.large, .large])
                }
                if (isSelected == true){
                    Spacer()

                }
            }
        }
    }
}

#Preview {
    HomeScreen()
}
