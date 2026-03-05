import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Back half of ring (behind planet)
            Ellipse()
                .trim(from: 0.0, to: 0.5)
                .stroke(Color.gray, lineWidth: 8)
                .frame(width: 220, height: 80)
                .rotationEffect(.degrees(160))

            // Planet
            Circle()
                .fill(Color.blue)
                .frame(width: 150, height: 150)
                .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 3)
                )

            // Front half of ring (in front of planet)
            Ellipse()
                .trim(from: 0.0, to: 0.5)
                .stroke(Color.gray, lineWidth: 8)
                .frame(width: 220, height: 80)
                .rotationEffect(.degrees(-20))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
