//
//  SwiftUIDatePickerView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 08/01/24.
//

import SwiftUI

struct SwiftUIDatePickerView: View {
    @State var selectedDate: Date = Date()
    let startDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    
    let endDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        
        VStack{
            Text("Selected Date:")
            Text(dateFormatter.string(from: selectedDate))
            //        DatePicker("Select a Date",
            //                   selection: $selectedDate)
                   // .datePickerStyle(.compact)
            //        .datePickerStyle(.graphical)
            //        DatePicker("Select a Date",
            //                   selection: $selectedDate,
            //                   displayedComponents: [.date, .hourAndMinute])
                   // .datePickerStyle(.wheel)
            DatePicker("Select a Date",
                       selection: $selectedDate,
                       in: startDate...endDate,
                       displayedComponents: [.date])
                    .accentColor(.red)
                    .padding()
            //        .foregroundColor(.white)
            //        .font(.headline)
            //        .background(.blue)
            //        .cornerRadius(10)
            //        .padding()
        }

    }
}

struct SwiftUIDatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIDatePickerView()
    }
}
