//
//  StructView.swift
//  EventSchedule
//
//  Created by Tom Wu on 2023-02-09.
//

import SwiftUI

struct StructView: View {
    
    let priorResult: Result
    
    var body: some View {
        VStack{
            Text("Date: \(priorResult.date)")
            Text(\(priorResult.typeInText)
        }
    }
}

struct StructView_Previews: PreviewProvider {
    static var previews: some View {
        StructView(priorResult: exampleResultForPreviews)
    }
}
