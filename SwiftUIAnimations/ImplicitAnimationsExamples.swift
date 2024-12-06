//
//  ImplicitAnimationsExamples.swift
//  SwiftUIAnimations
//
//  Created by Dipesh Patel on 02/12/24.
//


import SwiftUI

struct ImplicitAnimationsExamples: View {
    @State private var isScaled = false
    @State private var isVisible = true
    @State private var rotate = false
    @State private var moveRight = false
    @State private var isExpanded = false
    @State private var isTapped = false
    @State private var isShadowed = false
    @State private var isSelected = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                
                // 1. Implicit ScaleEffect Animation
                VStack {
                    Text("Scale Effect Animation")
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.blue)
                        .scaleEffect(isScaled ? 1.5 : 1)
                        .animation(.easeInOut(duration: 0.5), value: isScaled)
                    
                    Button("Toggle Scale") {
                        isScaled.toggle()
                    }
                    .padding()
                }
                
                // 2. Implicit Opacity Animation
                VStack {
                    Text("Opacity Animation")
                    Rectangle()
                        .frame(width: 200, height: 100)
                        .foregroundColor(.red)
                        .opacity(isVisible ? 1.0 : 0.0)
                        .animation(.easeInOut(duration: 0.5), value: isVisible)
                    
                    Button("Toggle Opacity") {
                        isVisible.toggle()
                    }
                    .padding()
                }
                
                // 3. Implicit Rotation Effect Animation
                VStack {
                    Text("Rotation Effect Animation")
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.green)
                        .rotationEffect(.degrees(rotate ? 45 : 0))
                        .animation(.easeInOut(duration: 0.5), value: rotate)
                    
                    Button("Rotate") {
                        rotate.toggle()
                    }
                    .padding()
                }
                
                // 4. Implicit Offset Animation
                VStack {
                    Text("Offset Animation")
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.purple)
                        .offset(x: moveRight ? 150 : 0, y: 0)
                        .animation(.easeInOut(duration: 0.5), value: moveRight)
                    
                    Button("Move Right") {
                        moveRight.toggle()
                    }
                    .padding()
                }
                
                // 5. Implicit Frame Animation
                VStack {
                    Text("Frame Animation")
                    Rectangle()
                        .foregroundColor(.orange)
                        .frame(width: isExpanded ? 300 : 100, height: 100)
                        .animation(.easeInOut(duration: 0.5), value: isExpanded)
                    
                    Button("Expand") {
                        isExpanded.toggle()
                    }
                    .padding()
                }
                
                // 6. Implicit Background Animation
                VStack {
                    Text("Background Animation")
                    Rectangle()
                        .frame(width: 200, height: 100)
                        .foregroundColor(isTapped ? Color.yellow : Color.blue)
                        .animation(.easeInOut(duration: 0.5), value: isTapped)
                    
                    Button("Change Background") {
                        isTapped.toggle()
                    }
                    .padding()
                }
                
                // 7. Implicit Shadow Animation
                VStack {
                    Text("Shadow Animation")
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.pink)
                        .shadow(radius: isShadowed ? 20 : 0)
                        .animation(.easeInOut(duration: 0.5), value: isShadowed)
                    
                    Button("Toggle Shadow") {
                        isShadowed.toggle()
                    }
                    .padding()
                }
                
                // 8. Implicit Border Animation
                VStack {
                    Text("Border Animation")
                    Rectangle()
                        .frame(width: 200, height: 100)
                        .foregroundColor(.green)
                        .border(isSelected ? Color.red : Color.blue, width: isSelected ? 10 : 2)
                        .animation(.easeInOut(duration: 0.5), value: isSelected)
                    
                    Button("Toggle Border") {
                        isSelected.toggle()
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
}

struct ImplicitAnimationsExamples_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitAnimationsExamples()
    }
}
