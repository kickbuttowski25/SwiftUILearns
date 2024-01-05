//
//  SwiftUITextFieldView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 04/01/24.
//

import SwiftUI

struct SwiftUITextFieldView: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type Something Here...", text: $textFieldText)
                    .padding()
                    .background(.gray.opacity(0.3))
                    .cornerRadius(10)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                   
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(
                            textIsAppropriate() ? .blue : .gray)
                        .cornerRadius(15)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField")
        }
        
    }
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct SwiftUITextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITextFieldView()
    }
}
