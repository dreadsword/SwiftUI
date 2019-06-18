//
//  Settings.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/18/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class Settings: BindableObject {
    
    var didChange = PassthroughSubject<Void, Never>()
    
    var tintColor = Color.red {
        didSet {
            didChange.send(())
        }
    }
    
    
}
