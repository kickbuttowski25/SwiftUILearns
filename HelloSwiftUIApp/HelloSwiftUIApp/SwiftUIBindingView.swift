//
//  SwiftUIBindingView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 05/12/23.
//

import SwiftUI

struct SwiftUIBindingView: View {
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .font(.title2)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .purple
    @Binding var title: String
    
    var body: some View {
        Button {
            self.backgroundColor = .yellow
            self.buttonColor = .cyan
            self.title = "New title"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

struct SwiftUIBindingView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIBindingView()
    }
}
