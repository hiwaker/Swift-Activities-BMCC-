import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            
            // MARK: - Roof
            ZStack(alignment: .topTrailing) {
                
                Triangle()
                    .fill(Color.red)
                    .frame(width: 260, height: 160)
                    .overlay(
                        Triangle()
                            .stroke(Color.black, lineWidth: 4)
                    )
            }
            
            // MARK: - House Body Group
            ZStack {
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.yellow)
                    .frame(width: 260, height: 180)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 4)
                    )
                
                // Window
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.cyan)
                    .frame(width: 70, height: 60)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 4)
                    )
                    .offset(x: -60, y: -20)
                
                // Door
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 60, height: 110)
                    .overlay(
                       Rectangle()
                            .stroke(Color.black, lineWidth: 4)
                    ).offset(x: 90, y: 30)
            }
        }
    }
}

// MARK: - Triangle Shape

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

#Preview {
    ContentView()
}
