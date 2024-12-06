//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Dipesh Patel on 29/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animate = false
    let screenWidth = UIScreen.main.bounds.width
    var body: some View {
//       Image("cat")
//            .resizable()
//            .frame(width: 100, height: 100)
//            .clipShape(.circle)
//            .shadow(radius: 20)
//            .scaleEffect(animate ? 1 : 2)
//            .animation(.easeInOut, value: animate)
//            .onTapGesture {
//                animate.toggle()
//            }
        
        // shimmer
        Rectangle()
            .overlay {
                LinearGradient(colors: [.clear,.white, .clear], startPoint: .leading, endPoint: .trailing)
                    .offset(x: animate ? screenWidth : -screenWidth)
                    .animation(.linear(duration: 2).repeatForever(autoreverses: false), value: animate)
            }
            .mask({
                Text("Slide to Switch Off")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            })
            .onAppear {
//                withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                    animate.toggle()
//                }
            }
            .background(.gray)
        
        //corner Radius
//        Rectangle()
//            .fill(Color.blue)
//            .frame(width: 200, height: 100)
//            .cornerRadius(animate ? 30 : 0) // Non-animatable attribute
//            .animation(.easeIn, value: animate) // This won't work, as cornerRadius is non-animatable
//            .onTapGesture {
//                // This won't animate as the cornerRadius is non-animatable
//                animate.toggle()
//            }
    }
}

#Preview {
    ContentView()
}
