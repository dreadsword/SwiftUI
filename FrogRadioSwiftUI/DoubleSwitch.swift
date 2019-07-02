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
    @State var selected1:Bool
    var title2:String
    @State var selected2:Bool
    
    @EnvironmentObject var settings: Settings

    
    var body: some View {
        HStack {
            Toggle(isOn: $selected1) {
                Text(title1).color(settings.tintColor)
            }
            .disabled(selected2 ? true : false)
            
            Toggle(isOn: $selected2) {
                Text(title2).color(settings.tintColor)
            }
        }
    }
}

#if DEBUG
struct DoubleSwitch_Previews : PreviewProvider {
    static var previews: some View {
        DoubleSwitch(title1: "A", selected1:true, title2: "B", selected2:false).environmentObject(Settings())
    }
}
#endif
