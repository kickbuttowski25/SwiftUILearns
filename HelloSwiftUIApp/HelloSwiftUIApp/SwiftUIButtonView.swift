//
//  SwiftUIButtonView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 03/12/23.
//

import SwiftUI

struct SwiftUIButtonView: View {
    @State var title: String = "This is my title"

    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.largeTitle)
            Button("Press me!") {
                self.title = "This is another title"
            }
            .font(.title3)

            Button(action: {
                self.title = "This is title text "
            }, label: {
              //  Text("Change Title")
                Image(systemName: "heart")
                    //.accentColor(Color.red)
                    .foregroundColor(.black)
            })
            .font(.title3)
            
            Button(action: {
                self.title = "This is another title text "
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
                
            })
            .font(.title3)
            
            Button(action: {
                self.title = "This is text "
            }, label: {
               Circle()
                    .fill(Color.white)
                    .frame(width: 60, height: 60)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                    )
                
            })
            .font(.title3)
            
            Button(action: {
                self.title = "This is last text "
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke()
                    )
                
            })
            .font(.title3)
        }
    }
}

struct SwiftUIButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIButtonView()
    }
}
