//
//  SwiftUIAnimationView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 06/12/23.
//

import SwiftUI

struct SwiftUIAnimationView: View {
    @State var isAnimation: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(Animation.default
                    .repeatForever(autoreverses: false)) {
                    isAnimation.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimation ? 25 : 50)
                .fill(isAnimation ? Color.red : Color.green)
                .frame(
                    width: isAnimation ? 200 : 100,
                    height: isAnimation ? 200 : 100)
                .rotationEffect(Angle(degrees: isAnimation ? 360 : 0))
                .offset(y: isAnimation ? 0 : 200)
            Spacer()
        }
    }
}

struct SwiftUIAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAnimationView()
    }
}
