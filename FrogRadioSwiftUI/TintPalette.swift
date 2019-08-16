//
//  TintPalette.swift
//  FrogRadioSwiftUI
//
//  Created by Robert Dodson on 6/17/19.
//  Copyright © 2019 Robert Dodson. All rights reserved.
//

import SwiftUI

var colors: [Color] = [.blue,.purple,.pink,.red,.orange,.yellow,.green,.gray]

struct ColorButton: View {
    
    var color:Color
    @ObservedObject var settings:Settings
    
    var body: some View {
        var selected = color == settings.tintColor ? true : false
        return Image(systemName: selected ? "o.circle" : "circle.fill")
            .foregroundColor(color)
            .onTapGesture {
                selected.toggle()
                self.settings.tintColor = self.color
        }
    }
}

struct TintPalette : View {
    
    @EnvironmentObject var settings: Settings

    var body: some View {
        HStack {
            Text("Tint").foregroundColor(.primary)
            Spacer()
                ForEach(0..<colors.count) { index in
                    ColorButton(color:colors[index],settings:self.settings)
            }
        }
    }
}


#if DEBUG

struct TintPalette_Previews : PreviewProvider {
    static var previews: some View {
        TintPalette().environmentObject(Settings())
    }
}
#endif
