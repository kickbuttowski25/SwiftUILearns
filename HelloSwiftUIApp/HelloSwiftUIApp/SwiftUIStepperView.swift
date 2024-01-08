//
//  SwiftUIStepperView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 08/01/24.
//

import SwiftUI

struct SwiftUIStepperView: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)",
                    value: $stepperValue)
            .padding(10)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            Stepper("Stepper 2") {
//                widthIncrement += 10
                incrementWidth(amount: 100)
            } onDecrement: {
                //widthIncrement -= 10
                incrementWidth(amount: -100)

            }
            .padding(10)

        }
        
       
    }
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct SwiftUIStepperView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIStepperView()
    }
}
