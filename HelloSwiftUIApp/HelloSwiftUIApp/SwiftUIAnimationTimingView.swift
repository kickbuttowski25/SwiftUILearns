//
//  SwiftUIAnimationTimingView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 07/12/23.
//

import SwiftUI

struct SwiftUIAnimationTimingView: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 15)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(response: 0.5,
                                   dampingFraction: 0.7,
                                   blendDuration: 1.0))
            
                //.animation(.spring())
               // .animation(Animation.linear(duration: timing))
            
//            RoundedRectangle(cornerRadius: 15)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 15)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 15)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
        
    }
}

struct SwiftUIAnimationTimingView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAnimationTimingView()
    }
}
