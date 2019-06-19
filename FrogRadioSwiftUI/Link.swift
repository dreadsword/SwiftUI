//
//  Link.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/18/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI
import UIKit

struct web: View {
    
    var url:URL
    
 var body: some View {
    Text("aa")
    }
}


struct Link : View {
    
    var linkName: String
    var linkURL: URL
    
    var body: some View {
            Text(linkName).color(.blue).underline()
    }
}

#if DEBUG
struct Link_Previews : PreviewProvider {
    static var previews: some View {
        Link(linkName: "link",
             linkURL: URL(fileURLWithPath: "https://frogradio.net"))
    }
}
#endif
