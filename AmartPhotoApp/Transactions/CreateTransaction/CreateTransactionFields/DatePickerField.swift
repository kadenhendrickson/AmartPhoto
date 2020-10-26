//
//  DatePickerField.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/6/20.
//

import SwiftUI

struct DatePickerField: View {
    @State var firstDate = Date()
    @State var firstTime = 0
    
    @State var secondDate = Date()
    @State var secondTime = 0
    
    @State private var times = ["Morning", "Afternoon", "Any"]

    var body: some View {
        
        VStack(spacing: 15) {
            VStack(alignment: .leading, spacing: 5) {
                Text("Preferred Date: ")
                HStack {
                    DatePicker("Pick a Date!",
                               selection: $firstDate,
                               in: Date()...,
                           displayedComponents: [.date])
                        .labelsHidden()
                    
                    Picker("Times", selection: $firstTime) {
                        ForEach(0 ..< times.count) { index in
                            Text(self.times[index]).tag(index)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
            }
            VStack(alignment: .leading, spacing: 5) {
                Text("Secondary Date: ")
                HStack {
                    DatePicker("Pick a Date!",
                               selection: $secondDate,
                               in: Date()...,
                           displayedComponents: [.date])
                        .labelsHidden()
                    
                    Picker("Times", selection: $secondTime) {
                        ForEach(0 ..< times.count) { index in
                            Text(self.times[index]).tag(index)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
            }
        }.padding()
        
    }
}

struct DatePickerField_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerField()
    }
}
