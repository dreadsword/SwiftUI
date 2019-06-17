//
//  SettingsView.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/17/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI

struct SettingsView : View {
    var body: some View {
        
        VStack {
            
            Text("Settings")
                .bold()
                .color(.green)
            
            List {
                Section(header: Text("General Settings")) {
                    Switch(title:"Auto Play", selected:true)
                    Switch(title:"Show Album Art", selected:false)
                    Switch(title:"Send Anonymous Usage Data", selected:true)
                    Switch(title:"Levels Meter",selected:true)
                    DoubleSwitch(title1:"Dark Mode", title2:"Follow System")
                    TintPalette(selectedColor: .red)
                }
                Section(header: Text("Support")) {
                    Text("Example Row")
                    Text("Example Row")
                    Text("Example Row")
                }
                Section(header: Text("Actions")) {
                    Text("Example Row")
                    Text("Example Row")
                    Text("Example Row")
                }
            }
            .listStyle(.grouped)
        }
    }
}

#if DEBUG
struct SettingsView_Previews : PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
#endif
