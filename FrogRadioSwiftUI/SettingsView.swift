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
               .color(settings.tintColor)
            List {
                Section(header: Text("General Settings").bold()) {
                    Switch(title:"Show Album Art", selected:settings.showArt)
                    Switch(title:"Send Anonymous Usage Data", selected:settings.sendAnonData)
                    Switch(title:"Levels Meter",selected:settings.levelsMeter)
                    DoubleSwitch(title1:"Dark Mode", selected1: settings.darkMode, title2:"Follow System", selected2: settings.followSystemMode)
                    TintPalette(settings:settings)
                }
                Section(header: Text("Support").bold()) {
                    Link(linkName: "FrogRadio Website", linkURL: URL(fileURLWithPath: "aa"))
                    Link(linkName: "Support", linkURL: URL(fileURLWithPath: "bb"))
                    Link(linkName: "Privacy Policy", linkURL: URL(fileURLWithPath: "cc"))
                    Link(linkName: "Email Support Request", linkURL: URL(fileURLWithPath: "dd"))
                }
                Section(header: Text("Actions").bold()) {
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
