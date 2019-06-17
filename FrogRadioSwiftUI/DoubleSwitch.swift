//
//  DoubleSwitch.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/17/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI

struct DoubleSwitch : View {
    
    var title1:String
    var title2:String
    
    var body: some View {
        HStack {
            Toggle(isOn: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text(title1)
            }
            Toggle(isOn: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text(title2)
            }
        }
    }
}

#if DEBUG
struct DoubleSwitch_Previews : PreviewProvider {
    static var previews: some View {
        DoubleSwitch(title1: "A", title2: "B")
    }
}
#endif
