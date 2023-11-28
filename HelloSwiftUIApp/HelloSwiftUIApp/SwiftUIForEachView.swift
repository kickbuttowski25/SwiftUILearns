//
//  SwiftUIForEachView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 27/11/23.
//

import SwiftUI

struct SwiftUIForEachView: View {
    let data: [String] = ["one", "two", "three"]
    let myString: String = "Hello"
               
    
    var body: some View {
        VStack(alignment: .leading) {
//            ForEach(data.indices) { index in
//                HStack (alignment: .center){
//                    Circle()
//                        .fill(Color.yellow)
//                        .frame(width: 50, height: 50)
//                    // Spacer()
//                    Text("\(data[index]): \(index)")
//                }
//            }
            ForEach(0..<100) { index in
                Text("\(index)")
                
            }
        }
        .padding(25)
    }
}

struct SwiftUIForEachView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIForEachView()
    }
}
