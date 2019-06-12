//
//  StationData.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/11/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import UIKit
import SwiftUI

var stationData: [Station] = load()

func load() -> [Station]
{
    var a: [Station] = []
    for x in 1...10
    {
        let name = "KEXP" + String(x)
        let station = Station(name: name, location: "New Orleans")
        a.append(station)
    }
    
    return a
}


/*

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
 */
