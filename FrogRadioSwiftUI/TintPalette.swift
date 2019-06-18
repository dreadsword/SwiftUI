//
//  TintPalette.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/17/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI

var colors: [Color] = [.blue,.purple,.pink,.red,.orange,.yellow,.green,.gray]

struct CircleToggleButton:View {

    var color: Color
    @Binding var selected: Bool
    
    var body: some View {
			Button(actionL { self.selected.toggle() }) {
				Image(systemName: self.selected ? "circle" : "circle.fill").foregroundColor(color)
			}
        }
    }
}

struct TintPalette : View {
    
    var selectedColor:Color
    
    var body: some View {
        HStack {
            Text("Tint")
            ForEach(colors.identified(by: \.self)) { color in
                if (color == self.selectedColor) {
                    CircleToggleButton(color: color, selected:true)
                }
                else {
                    CircleToggleButton(color: color, selected:false)
                }
            }
        }
    }
}

#if DEBUG
struct TintPalette_Previews : PreviewProvider {
    static var previews: some View {
        TintPalette(selectedColor: .blue)
    }
}
#endif
