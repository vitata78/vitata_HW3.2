//
//  ColorView.swift
//  vitata_HW3.2
//
//  Created by Andrew Tolstov on 7/24/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import SwiftUI

struct ColorView: View {
    
    let color: UIColor
    
    var body: some View {
        Color(color)
            .frame(height: 150)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(Color.white, lineWidth: 4))
            .padding()
    }
}


struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .black)
    }
}
