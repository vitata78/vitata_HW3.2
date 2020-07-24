//
//  ColorSlider.swift
//  vitata_HW3.2
//
//  Created by Andrew Tolstov on 7/24/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var value: Double
    var sliderType: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundColor(.white)
                .frame(width: 55, alignment: .leading)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(sliderType)
            TextField("255", value: $value, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(UIKeyboardType.numberPad)
                .frame(width: 55)
                .multilineTextAlignment(.trailing)
        }
        .padding(.horizontal)
    }
    
}

