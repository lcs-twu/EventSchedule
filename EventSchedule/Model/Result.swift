//
//  Result.swift
//  EventSchedule
//
//  Created by Tom Wu on 2023-02-09.
//

import SwiftUI

struct Result: Identifiable {
    
    let id = UUID()
    let date: Date
    let text: String
    
}

var exampleResultForPreviews = Result(date: 2023-02-09, text: "Type something")
