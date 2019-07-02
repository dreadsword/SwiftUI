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
    
    @EnvironmentObject var settings: Settings

    var body: some View {
        VStack {
            Text("Settings").font(.largeTitle).color(settings.tintColor)
            List {
                Section(header: Text("General Settings").bold()) {
                    Switch(title:"Show Album Art", selected:settings.showArt)
                    Switch(title:"Send Anonymous Usage Data", selected:settings.sendAnonData)
                    Switch(title:"Levels Meter",selected:settings.levelsMeter)
                    DoubleSwitch(title1:"Dark Mode", selected1: settings.darkMode, title2:"Follow System", selected2: settings.followSystemMode)
                    TintPalette()
                }
                Section(header: Text("Support").bold()) {
                    
                    NavigationLink(destination: About()) {
                        Text("About").color(.blue)
                    }
                    Link(title:"FrogRadio Website", url:"https://frogradio.net")
                    Link(title:"Support", url:"https://frogradio.net/support")
                    Link(title:"Privacy Policy", url:"https://frogradio.net/privacy/en")
                    Link(title:"Email Support Request", url:"mailto:support@frogradio.net?Subject=Support Request")
                }
                Section(header: Text("Actions").bold()) {
                    Text("Add A Station")
                    Text("Delete iCloud Data")
                }
            }
            .listStyle(.grouped)
        }
        .navigationBarTitle(Text("Settings"))
    }
}

#if DEBUG
struct SettingsView_Previews : PreviewProvider {
    static var previews: some View {
       Group {
            NavigationView {
                SettingsView()
            }.colorScheme(.light)
        }
    }
}
#endif
