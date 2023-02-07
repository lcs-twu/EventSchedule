//
//  Textfield.swift
//  EventSchedule
//
//  Created by Tom Wu on 2023-02-07.
//

import SwiftUI

struct Textfield: View {
    @State var inputGiven = ""
    var inputGivenAsOptionalString: String?{
        guard let inputGivenAsDouble = String(inputGiven)else{
            return nil
        }
        return inputGivenAsOptionalString
    }
    
    var outPutValue: String{
        //see if we have a number to work with
        guard let theText = inputGivenAsOptionalString else{
            return "Please enter a text"
        } let textInput = theText
    //step4
        return textInput
    }
    
    var body: some View {
        Textfield("5.5", $inputGiven)
    }
}

struct Textfield_Previews: PreviewProvider {
    static var previews: some View {
        Textfield()
    }
}
