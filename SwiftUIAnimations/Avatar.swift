//
//  Avatar.swift
//  SwiftUIAnimations
//
//  Created by Dipesh Patel on 02/12/24.
//

import SwiftUI
struct Avatar: View {
    
    @State var selected: Bool = false

    var body: some View {
        Image("cat")
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(.circle)
//            .scaleEffect(selected ? 1.5 : 1.0)
            .offset(x: selected ? -100 : 100)
            .animation(.bouncy, value: selected)
            .onTapGesture {
                selected.toggle()
            }
    }
}

#Preview {
    Avatar()
}

//extension ScaleEffect: Animatable {
//    var animatableData: AnimatablePair<CGSize.AnimatableData, UnitPoint.AnimatableData> {
//        get { AnimatablePair(scale.animatableData, anchor.animatableData)}
//    }
//}
