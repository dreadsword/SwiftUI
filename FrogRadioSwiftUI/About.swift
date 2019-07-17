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
                Text("Frog Icon By:").foregroundColor(.primary).bold()
                NavigationLink(destination: showlink(urlstr:"https://frogradio.net/privacy/en") ) {
                    Text("Brad Ellis").foregroundColor(.blue).underline()
                }
                Spacer()
            }
            
            Group {
                Text("Open Source Code Used:").foregroundColor(.primary).bold()
                NavigationLink(destination: showlink(urlstr:"https://frogradio.net/privacy/en") ) {
                    Text("FreeStreamer").foregroundColor(.blue).underline()
                }
                NavigationLink(destination: showlink(urlstr:"https://frogradio.net/privacy/en") ) {
                    Text("FMDB").foregroundColor(.blue).underline()
                }
                Spacer()
            }

            Group {
                Text("FrogRadio 1.0.14 (1300)").foregroundColor(.primary).bold()
                Text("Copyright 2019 Shy Frog Productions LLC").foregroundColor(.primary).font(.subheadline)
                NavigationLink(destination: showlink(urlstr:"https://frogradio.net/privacy/en") ) {
                    Text("Made in Tacoma").foregroundColor(.blue).underline()
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
