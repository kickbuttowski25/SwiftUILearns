//
//  SwiftUISliderView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 08/01/24.
//

import SwiftUI

struct SwiftUISliderView: View {
    @State var sliderValue: Double = 10.0
    @State var color: Color = .red
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
               // "\(sliderValue)"
                String(format: "%.0f", sliderValue)
            )
            .foregroundColor(color)
            //Slider(value: $sliderValue)
//            Slider(value: $sliderValue,
//                   in: 1...5)
//            Slider(value: $sliderValue, in:
//                    1...5,
//                   step: 0.5)
           Slider(value: $sliderValue
                  , in: 1...5,
                  label: {
               Text("Title")
           },
                  minimumValueLabel: {
               Text("1")
           },
                  maximumValueLabel: {
               Text("5")
           }, onEditingChanged: { (_) in
               color = .green
           })
                .accentColor(.red)
                .padding()
        }
    }
}

struct SwiftUISliderView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISliderView()
    }
}
