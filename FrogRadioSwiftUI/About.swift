//
//  About.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/18/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI

struct About : View {
    
    @ObjectBinding var settings: Settings
    
    var body: some View {
        VStack {
            Group {
                Image("TheFrog")
                Text("Frog Icon By:").color(.green).bold()
                Link(linkName: "Brad Ellis", linkURL:URL(fileURLWithPath: "FreeStreamer"))
                Spacer()
            }
            
            Group {
                Text("Open Source Code Used:").color(.green).bold()
                Link(linkName: "FreeStreamer", linkURL:URL(fileURLWithPath: "FreeStreamer"))
                Link(linkName: "FMDB", linkURL:URL(fileURLWithPath: "FreeStreamer"))
                 Spacer()
            }

            Group {
                Text("FrogRadio 1.0.14 (1300)").color(.green).bold()
                Text("Copyright 2019 Shy Frog Productions LLC").color(.green).font(.subheadline)
                Link(linkName: "Made in Tacoma", linkURL:URL(fileURLWithPath: "FreeStreamer"))
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
            About(settings: settings)
        }
    }
}
#endif
