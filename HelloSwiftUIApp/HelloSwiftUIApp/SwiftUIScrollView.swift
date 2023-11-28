//
//  SwiftUIScrollView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 28/11/23.
//

import SwiftUI

struct SwiftUIScrollView: View {
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack  {
                ForEach(0..<100) { index in
                        ScrollView(.horizontal, showsIndicators: false){
                            LazyHStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .padding()
                                    .shadow(radius: 10)
                                
                            }
                        }
                    }
                }
            }
        }
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack {
//                ForEach(0..<10) { index in
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: 300, height: 300)
//                }
//            }
//        }
    }
}

struct SwiftUIScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIScrollView()
    }
}
