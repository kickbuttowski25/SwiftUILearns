//
//  SwiftUISheetView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 07/12/23.
//

import SwiftUI

struct SwiftUISheetView: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.cyan.edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.white)
                    .font(.title2)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Color.green)
                    .cornerRadius(6)
            }
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondView()
            })
//            .sheet(isPresented: $showSheet) {
//                SecondView()
//            }
        }
       
    }
}

struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.yellow.edgesIgnoringSafeArea(.all)
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "cross")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
//                Text("Button")
//                    .foregroundColor(.white)
//                    .font(.title2)
//                    .padding()
//                    .padding(.horizontal, 10)
//                    .background(Color.green)
//                    .cornerRadius(6)
            }
            Spacer()
        }
    }
}

struct SwiftUISheetView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISheetView()
    }
}
