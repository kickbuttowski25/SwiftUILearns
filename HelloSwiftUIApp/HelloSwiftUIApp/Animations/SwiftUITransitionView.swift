//
//  SwiftUITransitionView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 07/12/23.
//

import SwiftUI

struct SwiftUITransitionView: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 15)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeOut)))
                 //   .transition(AnyTransition.scale.animation(.easeOut))
                   // .transition(AnyTransition.opacity.animation(.easeOut))
                   // .transition(.move(edge: .bottom))
                    //.transition(.slide)
                // .opacity(showView ? 1.0 : 0.0)
                    .animation(.easeOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SwiftUITransitionView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITransitionView()
    }
}
