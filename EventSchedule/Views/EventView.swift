//
//  EventView.swift
//  EventSchedule
//
//  Created by Tom Wu on 2023-02-07.
//

import SwiftUI

struct EventView: View {
    @State var typeInText = ""
//    @State var genderIsMale: Bool = false
    
    @Binding var history: [Result]
    
    var body: some View {
        
        //ZStack {
            
            // Layer 1
            //Color(genderIsMale == true ? .blue : .red)
            
            // Layer 2
            VStack{
                HStack{
                    Text("Event Scedule")
                        .bold()
                        .font(.largeTitle)
                    Spacer()
                }
                TextField("Type", text: $typeInText)
                .truncationMode(.middle)
                .padding(.horizontal)
//                Button(action: {
//
//                    genderIsMale.toggle()
//
//                }, label: {
//
//                    Text("Change gender")
//
//                })
//
//                Text("genderIsMale is: \(genderIsMale == true ? "is true" : "is false")")
                    
                
                TimePicker()
                Button(action: {
                    let date = Date()
                    let priorResult = Result(date: Date(), text: typeInText)
                },
                       label: {
                           Text("Save")
                               .font(.headline.smallCaps())
                       })
                .buttonStyle(.bordered)
                Spacer()
            }
        //}
        
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(history: Binding.constant([exampleResultForPreviews]))
    }
}
