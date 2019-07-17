//
//  StationRow.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/11/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI

struct StationRow : View {
    
    var station:Station
    
    var body: some View {
            HStack {
                    Image(systemName: "phone.fill").scaledToFill()
                    VStack(alignment: .leading) {
                        Text(station.name)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                        Text(station.location)
                            .font(.subheadline)
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                    }
                }
        }
}

#if DEBUG
struct StationRow_Previews : PreviewProvider {
    static var previews: some View {
        let station = Station()
        return StationRow(station:station)
    }
}
#endif
