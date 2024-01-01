//
//  SwiftUIAlertView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 30/12/23.
//

import SwiftUI

enum MyAlerts {
    case success
    case error
}
struct SwiftUIAlertView: View {
    
    @State var showAlert: Bool = false
    @State var alertTitle = ""
    @State var alertMsg = ""
    @State var myAlerts:  MyAlerts = .success
    @State var backgroundColor: Color = .yellow
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            HStack {
                Button("Show Error") {
                    myAlerts = .error
//                    alertTitle = "Some error occured"
//                    alertMsg = "There is some error occured"
                    showAlert = true
                }
                .padding(16)
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(12)
                
                Button("Show Confirm") {
                    myAlerts = .success
//                    alertTitle = "Confirmd"
//                    alertMsg = "The Message Confirmed"
                    showAlert = true
                }
                .padding(16)
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(12)
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch myAlerts {
        case .success:
          
            return Alert(title:
                            Text("This is a success!"),
                         dismissButton: .default(Text("Ok")))
        case .error:
            return Alert(title:
                                    Text("Some error occured"))
//        default :
//            return Alert(title:
//                            Text("Error"))
        }
       
    }
}

struct SwiftUIAlertView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAlertView()
    }
}
