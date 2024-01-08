//
//  SwiftUIColorPickerView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 08/01/24.
//

import SwiftUI

struct SwiftUIColorPickerView: View {
    @State var backgroundColor: Color = .green
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker(
                "Select a Color",
                selection: $backgroundColor)
            .foregroundColor(.white)
            .padding()
            .background(.black)
            .font(.headline)
            .cornerRadius(10)
            .padding(50)
        }
    }
}

struct SwiftUIColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIColorPickerView()
    }
}
