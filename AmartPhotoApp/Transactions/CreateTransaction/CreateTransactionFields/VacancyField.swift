//
//  VacancyField.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/6/20.
//

import SwiftUI

struct VacancyField: View {
    @State private var selectorIndex = 0;
    @State private var options = ["No", "Yes"]
    var isVacant: Bool {
        if(selectorIndex == 0) { return true }
        else { return false }
    }
    @State var homeownerPhone = ""
    var body: some View {
        
        VStack {
            HStack(spacing: 25) {
                Text("Is home vacant?")
                Picker("Options", selection: $selectorIndex) {
                    ForEach(0 ..< options.count) { index in
                        Text(self.options[index]).tag(index)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Homeowner phone number: ")
                TextField("Ex. 801-898-3732", text: $homeownerPhone)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.opacity(isVacant ? 1 : 0)
        }.padding()
    }
}

struct VacancyField_Previews: PreviewProvider {
    static var previews: some View {
        VacancyField()
    }
}
