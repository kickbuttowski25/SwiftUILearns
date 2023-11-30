//
//  SwiftUIGridView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 28/11/23.
//

import SwiftUI

struct SwiftUIGridView: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)

    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: .sectionHeaders) {
                Section(header:
                            Text("Section 1")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.red)
                    .padding()

                        
                ) {
                    ForEach(0..<20) {index in
                        
                        Rectangle()
                            .frame(height: 150)
                            .overlay(
                                Text("1")
                                    .foregroundColor(Color.white)
                            )
                        
                    }
                }
                Section(header:
                            Text("Section 2")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.red)
                    .padding()

                        
                ) {
                    ForEach(0..<20) {index in
                        
                        Rectangle()
                            .frame(height: 150)
                            .overlay(
                                Text("1")
                                    .foregroundColor(Color.white)
                            )
                        
                    }
                }
            }
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) {index in
//
//                    Rectangle()
//                        .frame(height: 150)
//                        .overlay(
//                            Text("1")
//                                .foregroundColor(Color.white)
//                        )
//
//                }
//            }
        }
    }
}

struct SwiftUIGridView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIGridView()
    }
}
