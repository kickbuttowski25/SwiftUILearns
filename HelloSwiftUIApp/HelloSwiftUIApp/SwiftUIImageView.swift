//
//  SwiftUIImageView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 25/11/23.
//

import SwiftUI

struct SwiftUIImageView: View {
    var body: some View {
        Image("melio")
            .resizable()
           // .renderingMode(.template)
          //  .foregroundColor(Color.red)
            //.cornerRadius(200)
            //.clipped()
           // .aspectRatio(contentMode: .fill)
          
           // .font(.largeTitle)
            //.scaledToFill()
           // .clipShape(
            //    Circle()
              //  Ellipse()
         //   )
    }
}

struct SwiftUIImageView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImageView()
    }
}
