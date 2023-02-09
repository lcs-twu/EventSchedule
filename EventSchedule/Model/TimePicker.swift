//
//  TimePicker.swift
//  EventSchedule
//
//  Created by Tom Wu on 2023-02-07.
//

import SwiftUI

struct TimePicker: View {
    @State private var date = Date()
    @State var typeInText = ""
    var body: some View {
        VStack(alignment: .leading){
            
            TextField("Type", text: $typeInText)
            .truncationMode(.middle)
            .padding(.horizontal)
            
            Form {
                DatePicker("Today", selection: $date,
                           displayedComponents: .date)
                
                Section {
                    Text("Pick the date:")
                        .bold()
                        .font(.title2)
                    DatePicker("Birthday", selection: $date,
                               displayedComponents: .date)
                    .datePickerStyle(.graphical)
                }
            }
        }
    }
}

struct TimePicker_Previews: PreviewProvider {
    static var previews: some View {
        TimePicker()
    }
}
