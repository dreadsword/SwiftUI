//
//  Station.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/11/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI

struct Station: Identifiable
{
    var id: UUID = UUID()
    var name: String = "StationName"
    var location: String = "StationLocation"
}
