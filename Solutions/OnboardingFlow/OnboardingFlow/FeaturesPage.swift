//
//  FeaturesPage.swift
//  mondayDelete
//
//  Created by chadhindsight on 3/16/26.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        Text("Features")
            .font(.title)
            .fontWeight(.semibold)
            .padding(.bottom)
        FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
        
        FeatureCard(iconName: "quote.bubble.fill", description: "Short summary")
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
