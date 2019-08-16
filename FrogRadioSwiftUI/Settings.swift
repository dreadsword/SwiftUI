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

class Settings: Combine.ObservableObject {
    
    var willChange = PassthroughSubject<Void, Never>()
    
    var tintColor = Color.red {
        willSet {
            willChange.send()
        }
    }
    
    var darkMode = false {
        willSet {
            willChange.send()
        }
    }
    
    var autoPlay = true {
        willSet {
            willChange.send()
        }
    }
    
    var showArt = false {
        willSet {
            willChange.send()
        }
    }
    
    var sendAnonData = true {
        willSet {
            willChange.send()
        }
    }
    
    var levelsMeter = false {
        willSet {
            willChange.send()
        }
    }
    
    var followSystemMode = false {
        willSet {
            willChange.send()
        }
    }
    
}
