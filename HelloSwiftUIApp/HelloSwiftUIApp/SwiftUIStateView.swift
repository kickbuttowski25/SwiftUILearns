//
//  SwiftUIStateView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 03/12/23.
//

import SwiftUI

struct SwiftUIStateView: View {
    @State var myTitle: String = "Title hi title"
    @State var backgroundColor: Color = Color.green
    @State var pressedCount: Int = 0
    
    var body: some View {
        ZStack{
          //  Color.red
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20){
                Text(myTitle)
                   
                Text("Count: \(pressedCount)")
                
                HStack(spacing: 20){
                    Button("Red") {
                        self.backgroundColor = .red
                        self.myTitle = "Background is Red"
                        self.pressedCount += 1
                    }
                    Button("Yellow") {
                        self.backgroundColor = .yellow
                        self.myTitle = "Background is Yellow"
                        if pressedCount >= 1 {
                            self.pressedCount -= 1
                        }

                    }
                }
                .font(.title2)
            }
            .font(.largeTitle)
            .foregroundColor(Color.white)
        }
    }
}

struct SwiftUIStateView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIStateView()
    }
}
