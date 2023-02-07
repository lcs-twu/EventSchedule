//
//  TimePicker.swift
//  EventSchedule
//
//  Created by Tom Wu on 2023-02-07.
//

import SwiftUI

struct TimePicker: View {
    @State private var date = Date()
    var body: some View {
        VStack(alignment: .leading){
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
