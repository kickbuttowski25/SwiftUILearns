//
//  SwiftUIDarkModeView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 09/01/24.
//

import SwiftUI

struct SwiftUIDarkModeView: View {
    
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 20) {
                    Text("This color is primary")
                        .foregroundColor(.primary)
                    Text("This color is secondary")
                        .foregroundColor(.secondary)
                    Text("This color is black")
                        .foregroundColor(.black)
                    Text("This color is white")
                        .foregroundColor(.white)
                    Text("This color is global adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark mode")
        }
    }
}

struct SwiftUIDarkModeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SwiftUIDarkModeView()
                .preferredColorScheme(.light)
            SwiftUIDarkModeView()
                .preferredColorScheme(.dark)
        }
        
    }
}
