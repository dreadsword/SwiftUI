//
//  SettingsView.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/17/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI
import Combine



struct SettingsView : View {
    
    @ObjectBinding var settings: Settings
    
    var body: some View {
        VStack {
            Text("Settings")
               .bold()
               .color(.green)
            List {
                Section(header: Text("General Settings")) {
                    Switch(title:"Show Album Art", selected:settings.showArt)
                    Switch(title:"Send Anonymous Usage Data", selected:settings.sendAnonData)
                    Switch(title:"Levels Meter",selected:settings.levelsMeter)
                    DoubleSwitch(title1:"Dark Mode", selected1: settings.darkMode, title2:"Follow System", selected2: settings.followSystemMode)
                    TintPalette(settings:settings)
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
var settings: Settings = Settings()
struct SettingsView_Previews : PreviewProvider {
    static var previews: some View {
        SettingsView(settings: settings)
    }
}
#endif
