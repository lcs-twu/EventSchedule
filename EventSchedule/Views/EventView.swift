//
//  EventView.swift
//  EventSchedule
//
//  Created by Tom Wu on 2023-02-07.
//

import SwiftUI

struct EventView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Event Scedule")
                    .bold()
                    .font(.largeTitle)
                Spacer()
            }
            Textfield()
            TimePicker()
            Spacer()
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
