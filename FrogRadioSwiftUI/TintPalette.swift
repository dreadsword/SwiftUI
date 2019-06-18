//
//  TintPalette.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/17/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI

var colors: [Color] = [.blue,.purple,.pink,.red,.orange,.yellow,.green,.gray]


var selectedColor:Color = .red

struct ColorButton: View {
    
    var color:Color
    @State var selected:Bool
    
    var body: some View {
        Image(systemName: selected ? "circle" : "circle.fill")
        .foregroundColor(color)
            .tapAction {
                self.selected.toggle()
                selectedColor = self.color
        }
    }
}

struct TintPalette : View {
    
    var body: some View {
        HStack {
            Text("Tint")
            ForEach(colors.identified(by: \.self)) { color in
                ColorButton(color:color, selected:color == selectedColor ? true : false)
            }
        }
    }
}

#if DEBUG
struct TintPalette_Previews : PreviewProvider {
    static var previews: some View {
        TintPalette()
    }
}
#endif
