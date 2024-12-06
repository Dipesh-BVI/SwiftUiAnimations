//
//  CustomCircle.swift
//  SwiftUIAnimations
//
//  Created by Dipesh Patel on 02/12/24.
//

import SwiftUI

struct CustomCircle: View, Animatable {
    var radius: CGFloat
    
    var animatableData: CGFloat {
        get { radius }
        set { radius = newValue }
    }
    
    var body: some View {
        Circle()
            .frame(width: radius * 2, height: radius * 2)
    }
}

struct CustomAnimation: View {
    
    @State private var radius: CGFloat = 50
    
    var body: some View {
        CustomCircle(radius: radius)
            .onTapGesture {
                withAnimation {
                    radius = radius == 50 ? 100 : 50
                }
            }
    }
}
