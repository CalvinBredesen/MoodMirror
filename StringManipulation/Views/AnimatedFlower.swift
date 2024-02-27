//
//  AnimatedFlower.swift
//  StringManipulation
//
//  Created by Calvin Bredesen24 on 2/26/24.
//
import SwiftUI

 
struct AnimatedFlower: View {
    @State private var rPetal = false
    @State private var lPetal = false
    @State private var mrPetal = false
    @State private var mlPetal = false
 
    @State private var customShadow = false
    var body: some View {
        ZStack{
            ZStack{
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame (width: 40, height: 110, alignment:.center) //Middle
                    .rotationEffect(.degrees (0), anchor: .bottom)
                
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame (width: 40, height: 110, alignment:.center) //Middle Left
                    .rotationEffect(.degrees(mlPetal ? -15: -2), anchor: .bottom)
                    .animation(Animation.easeInOut(duration: 2) .delay(2).repeatForever(autoreverses: true))
                    .onAppear {
                        mlPetal.toggle()
                    }
                
                
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame(width: 40, height: 110, alignment: .center) //Left
                    .rotationEffect(.degrees(mlPetal ? -25: -5), anchor: .bottom)
                   .animation(Animation.easeInOut(duration: 2) .delay(2).repeatForever(autoreverses: true))
                    .onAppear {
                        lPetal.toggle()
                    }
                
                
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame (width: 40, height: 110, alignment:.center) //Middle Right
                    .rotationEffect(.degrees(mlPetal ? 15: 2), anchor: .bottom)
                .animation(Animation.easeInOut(duration: 2) .delay(2).repeatForever(autoreverses: true))
                    .onAppear {
                        mrPetal.toggle()
                    }
                
                Image(systemName: "diamond.fill")
                    .resizable()
                    .frame(width: 40, height: 110, alignment: .center) //Right
                    .rotationEffect(.degrees(mlPetal ? 25: 5), anchor: .bottom)
                    .animation(Animation.easeInOut(duration: 2) .delay(2).repeatForever(autoreverses: true))
                    .onAppear {
                        rPetal.toggle()
                    }
                
            }.shadow(color: Color.purple, radius: customShadow ? 20 : 0)
                .hueRotation (Angle(degrees: customShadow ? 0 : 165))
                .animation(Animation.easeInOut(duration: 2).delay(2).repeatForever(autoreverses: true))
                .onAppear{
                    customShadow.toggle()
                }
                .foregroundColor(.white)
                .opacity(0.5)
            
            
        }
    }
    
}



#Preview {
    AnimatedFlower()
}
