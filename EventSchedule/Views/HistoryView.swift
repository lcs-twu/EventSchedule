//
//  HistoryView.swift
//  EventSchedule
//
//  Created by Tom Wu on 2023-02-09.
//

import SwiftUI

struct HistoryView: View {
    @Binding var history: [Result]
    var body: some View {
        HStack{
            Text("Things not done yet...")
                .bold()
                .font(.largeTitle)
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: Binding.constant([exampleResultForPreviews]))
    }
}
