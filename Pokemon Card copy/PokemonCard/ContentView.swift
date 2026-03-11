import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 20) {
        
                        
        }
        .padding()
    }
}

struct PokemonCard: View {
    
    let imageName: String
    let name: String
    let hp: Int
    
    let attackName: String
    let damage: Int
    let attackDescription: String
    
    let pokemonDescription: String
    
    var body: some View {
        
        VStack(spacing: 10) {
            
            // Top row
            HStack {
                Text(name)
                    .font(.headline)
                
                Spacer()
                
                Text("HP \(hp)")
                    .font(.subheadline)
            }
            
            // Pokemon image
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 120)
            
            Divider()
            
            // Attack name + damage
            HStack {
                Text(attackName)
                    .font(.subheadline)
                    .bold()
                
                Spacer()
                
                Text("\(damage)")
                    .bold()
            }
            
            // Attack description
            Text(attackDescription)
                .font(.caption)
                .multilineTextAlignment(.leading)
            
            Divider()
            
            // Pokemon description (flavor text)
            Text(pokemonDescription)
                .font(.caption2)
                .italic()
                .multilineTextAlignment(.leading)
            
        }
        .padding()
        .background(Color.yellow.opacity(0.4))
        .cornerRadius(12)
        .frame(width: 220)
    }
}

#Preview {
    ContentView()
}
