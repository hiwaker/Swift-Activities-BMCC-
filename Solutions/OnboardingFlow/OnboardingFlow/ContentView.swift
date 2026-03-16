//
//  ContentView.swift
//  mondayDelete
//
//  Created by chadhindsight on 3/16/26.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
  
    
    var body: some View {
        TabView{
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
        
        
    }
}

#Preview {
    ContentView()
}
