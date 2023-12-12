//
//  SwiftUIListView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 12/12/23.
//

import SwiftUI

struct SwiftUIListView: View {
    @State var fruits: [String] = ["apple","orange", "banana","peach"]
    var body: some View {
        List {
            Section {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit.capitalized)
                }
            } header: {
                Text("Fruits")
            }
            
        }
    }
}

struct SwiftUIListView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIListView()
    }
}
