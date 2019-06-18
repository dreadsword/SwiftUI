//
//  Switch.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/17/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI

struct Switch : View {
    
    var title:String
    @State var selected:Bool
    
    var body: some View {
        HStack {
            Toggle(isOn: $selected) {
                Text(title)
            }
        }
    }
}


#if DEBUG


struct Switch_Previews : PreviewProvider {
    
    static var previews: some View {
        Switch(title:"Dark Mode",selected:false)
    }
}
#endif
