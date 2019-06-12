//
//  ContentView.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/11/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    let stations: [Station]
    
    var body: some View {
        NavigationView {
                List(stations) { station in
                    StationRow(station: station)
                }
            }.navigationBarTitle(Text("Stations"))
    }
}
    

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(stations:stationData)
    }
}
#endif
