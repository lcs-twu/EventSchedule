//
//  EventScheduleApp.swift
//  EventSchedule
//
//  Created by Tom Wu on 2023-02-07.
//

import SwiftUI

@main
struct EventScheduleApp: App {
    @State var history: [Result] = []
    var body: some Scene {
        WindowGroup {
            TabView{
                EventView(history: $history)
                    .tabItem {
                        Image(systemName: "rectangle.split.2x2.fill")
                        Text("Calculate")
                    }
                HistoryView(history: $history)
                    .tabItem {
                        Image(systemName: "clock.fill")
                        Text("History")
                    }
            }
        }
    }
}
