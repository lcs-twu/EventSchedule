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
    
            NavigationView {
                List {
                    ForEach(history.reversed()) { somePriorResult in
                        StructView(priorResult: somePriorResult)
                    }
                    .onDelete(perform: delete)
                }
                .navigationTitle("History")
            }
        }
    }
    func delete(at offsets: IndexSet) {
        history.remove(atOffsets: offsets)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: Binding.constant([exampleResultForPreviews]))
    }
}
