import SwiftUI

struct AnimatedCircleView: View {
    @State private var isSelected = false
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                // Apply animation with scale and opacity change
                .scaleEffect(isSelected ? 1.5 : 1.0) // Scale the circle
                .opacity(isSelected ? 0.2 : 1.0)  // Change opacity
                // Applying the animation modifier
                .animation(.easeInOut(duration: 1), value: isSelected) // Animation is triggered when `isSelected` changes
            
            Button("Animate") {
                isSelected.toggle() // Toggle the state to trigger the animation
            }
            .padding()
        }
        .padding()
    }
}

struct AnimatedCircleView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedCircleView()
    }
}
