//
//  ContentView.swift
//  vitata_HW3.2
//
//  Created by Andrew Tolstov on 7/24/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    
    var body: some View {
        ZStack {
            
            Color(.darkGray)
                .edgesIgnoringSafeArea(.all)
                
            VStack {
                
                ColorView(color: UIColor(red: CGFloat(redValue/255.0),
                                         green: CGFloat(greenValue/255.0),
                                         blue: CGFloat(blueValue/255.0),
                                         alpha: CGFloat(1.0)))
                
                ColorSlider(value: $redValue, sliderType: .red)
                ColorSlider(value: $greenValue, sliderType: .green)
                ColorSlider(value: $blueValue, sliderType: .blue)
                Spacer()
            }
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to: nil, from: nil, for: nil)
    }
}
