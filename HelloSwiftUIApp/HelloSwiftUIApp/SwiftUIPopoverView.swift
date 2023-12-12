//
//  SwiftUIPopoverView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 11/12/23.
//

// Sheets
// animation
// transitions

import SwiftUI

struct SwiftUIPopoverView: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            VStack {
                Button("Next screen") {
                    showSheet.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            // METHOD 1: SHEET
//            .sheet(isPresented: $showSheet) {
//                NewScreen(showSheet: $showSheet)
//            }
            
            // METHOD 2: TRANSITION
            if showSheet {
                NewScreen()
                    .padding(.top, 100)
                    .transition(.move(edge: .bottom))
                    .animation(Animation.spring())
            }
            
            // METHOD 3: ANIMATION
            
            
        }
    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
 //   @Binding var showSheet: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple.edgesIgnoringSafeArea(.all)
            Button {
                presentationMode.wrappedValue.dismiss()
                //showSheet.toggle()
            } label: {
                Image(systemName: "xmark")
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
            }
        }
    }
}

struct SwiftUIPopoverView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPopoverView()
       // NewScreen()
    }
}
