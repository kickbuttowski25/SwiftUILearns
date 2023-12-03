//
//  SwiftUISafeAreaView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 03/12/23.
//

import SwiftUI

struct SwiftUISafeAreaView: View {
    var body: some View {
      //  ZStack {
            ScrollView {
                VStack {
                    
                    Text("Header")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    ForEach(0..<10){ index in
                        
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(height: 150)
                            .padding(20)
                            .shadow(radius: 15)
                        
                    }
                }
            }
            .background(
                Color.blue
                    //.edgesIgnoringSafeArea(.all)
                  //  .ignoresSafeArea(edges: .bottom)
            )
     //   }
        
        
//        ZStack {
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            VStack{
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//
//            }
//            //.frame(maxWidth: .infinity, maxHeight: .infinity)
//            // .background(Color.red)
//        }
    }
}

struct SwiftUISafeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISafeAreaView()
    }
}
