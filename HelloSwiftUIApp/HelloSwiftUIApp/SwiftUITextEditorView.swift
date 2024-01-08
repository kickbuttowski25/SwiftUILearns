//
//  SwiftUITextEditorView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 06/01/24.
//

import SwiftUI

struct SwiftUITextEditorView: View {
    @State var textEditorText: String = "This is the Test..."
    @State var savedText: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
//                    .background(.gray)
                    .colorMultiply(.gray)
                    .cornerRadius(10)
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .padding()
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(.green)
            .navigationTitle("TextEditor")
        }
    }
}

struct SwiftUITextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITextEditorView()
    }
}
