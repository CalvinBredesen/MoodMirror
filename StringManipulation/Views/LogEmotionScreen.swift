//
//  LogEmotionScreen.swift
//  StringManipulation
//
//  Created by Calvin Bredesen24 on 2/13/24.
//

import SwiftUI

struct LogEmotionScreen: View {
    
    @State private var text: String = ""
    var body: some View {
        
        Text("describe your feeling or mood")
        TextField("", text: $text, prompt: Text("Type message here...").foregroundColor(.gray))
            .padding()
        
        Text(text)
        
        Button {
            
        } label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 35)
            
            
        }
    }
}

#Preview {
    LogEmotionScreen()
}
