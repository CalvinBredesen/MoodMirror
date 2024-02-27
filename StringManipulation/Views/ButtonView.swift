//
//  ButtonView.swift
//  StringManipulation
//
//  Created by Calvin Bredesen24 on 2/22/24.
//

import SwiftUI

struct ButtonView: View {
    
    @State  var title: String = "title"
    @State  var description: String = "description"
    
    
    @Binding  var isSelected: Bool

    var body: some View {
        
        ZStack(alignment: .leading){
            Text("")
                .frame(width: UIScreen.main.bounds.width - 25, height: 111)
                .background(Color.black)
                .opacity(0.8)
                .cornerRadius(8)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading){
                Text(title)
                    .opacity(0.7)
                Text(description)
            }
            .foregroundColor(.white)
            .padding()
            
            
            
            HStack{
                Spacer()
                if (isSelected == true){
                    Image(systemName: "checkmark")
                        .foregroundColor(.teal)
                        .offset(x: -50)
                        .bold()
                        .imageScale(.large)
                }
                
                    
            }
        }
        .frame(width: UIScreen.main.bounds.width - 25, height: 111)
//        .onTapGesture {
//            withAnimation{
//                isSelected.toggle()
//            }
//        }
        
    }
}

#Preview {
    ButtonView(isSelected: .constant(false))
        
}
