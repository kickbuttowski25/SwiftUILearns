//
//  SwiftUIViewInitializer.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 27/11/23.
//

import SwiftUI

struct SwiftUIViewInitializer: View {
    let backgroundColor: Color
    let count: Int
    let title: String //= "Oranges"
    
    init(count: Int, fruit: Fruits) {
        self.count = count

        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else if fruit == .orange {
            self.title = "Oranges"
            self.backgroundColor = .orange
        } else {
            self.title = "Peaches"
            self.backgroundColor = .pink
        }
        
    }
    
    enum Fruits {
        case apple
        case orange
        case peach
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .foregroundColor(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct SwiftUIViewInitializer_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SwiftUIViewInitializer(count: 50, fruit: .orange)
            SwiftUIViewInitializer(count: 150, fruit: .apple)
            SwiftUIViewInitializer(count: 100, fruit: .peach)

        }
    }
}
