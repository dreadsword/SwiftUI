//
//  About.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/18/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI

struct About : View {
    
    @EnvironmentObject var settings: Settings

    
    var body: some View {
        VStack {
            Group {
                Image("TheFrog")
                Text("Frog Icon By:").color(settings.tintColor).bold()
                NavigationLink(destination: showlink(urlstr:"https://frogradio.net/privacy/en") ) {
                    Text("Brad Ellis").color(.blue).underline()
                }
                Spacer()
            }
            
            Group {
                Text("Open Source Code Used:").color(settings.tintColor).bold()
                NavigationLink(destination: showlink(urlstr:"https://frogradio.net/privacy/en") ) {
                    Text("FreeStreamer").color(.blue).underline()
                }
                NavigationLink(destination: showlink(urlstr:"https://frogradio.net/privacy/en") ) {
                    Text("FMDB").color(.blue).underline()
                }
                Spacer()
            }

            Group {
                Text("FrogRadio 1.0.14 (1300)").color(settings.tintColor).bold()
                Text("Copyright 2019 Shy Frog Productions LLC").color(settings.tintColor).font(.subheadline)
                NavigationLink(destination: showlink(urlstr:"https://frogradio.net/privacy/en") ) {
                    Text("Made in Tacoma").color(.blue).underline()
                }
                 Spacer()
            }
        }
        .navigationBarTitle(Text("About"))
    }
}

#if DEBUG
struct About_Previews : PreviewProvider {
    static var previews: some View {
       NavigationView {
            About().environmentObject(Settings())
        }
    }
}
#endif
