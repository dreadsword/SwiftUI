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
            didChange.send()
        }
    }
    
    var darkMode = false {
        didSet {
            didChange.send()
        }
    }
    
    var autoPlay = true {
        didSet {
            didChange.send()
        }
    }
    
    var showArt = false {
        didSet {
            didChange.send()
        }
    }
    
    var sendAnonData = true {
        didSet {
            didChange.send()
        }
    }
    
    var levelsMeter = false {
        didSet {
            didChange.send()
        }
    }
    
    var followSystemMode = false {
        didSet {
            didChange.send()
        }
    }
}
