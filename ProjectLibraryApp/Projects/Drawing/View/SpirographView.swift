//
//  SpirographView.swift
//  ProjectLibraryApp
//
//  Created by Ivan Aguiar on 17/10/2022.
//

import SwiftUI

struct SpirographView: View {
    
    @State var innerRadius = 125.0
    @State var outerRadius = 75.0
    @State var distance = 25.0
    @State var amount = 1.0
    @State var hue = 0.6
    
    var body: some View {
        VStack (spacing: 0) {
            
            Spirograph(innerRadius: Int(self.innerRadius), outerRadius: Int(self.outerRadius), distance: Int(self.distance), amount: self.amount)
                .stroke(Color(hue: hue, saturation: 1, brightness: 1), style: StrokeStyle(lineWidth: 1))
                .frame(width: 300, height: 300)
            
            Spacer()
            
            Group {
                Text("Inner radius: \(Int(innerRadius))")
                Slider(value: $innerRadius, in: 10...150, step: 1)
                    .padding([.horizontal, .bottom])
                
                Text("Outer radius: \(Int(outerRadius))")
                Slider(value: $outerRadius, in: 10...150, step: 1)
                    .padding([.horizontal, .bottom])

                Text("Distance: \(Int(distance))")
                Slider(value: $distance, in: 1...150, step: 1)
                    .padding([.horizontal, .bottom])

                Text("Amount: \(amount, format: .number.precision(.fractionLength(2)))")
                Slider(value: $amount)
                    .padding([.horizontal, .bottom])

                Text("Color")
                Slider(value: $hue)
                    .padding(.horizontal)
                    .padding(.bottom, 40)
            }
        }
    }
}

struct SpirographView_Previews: PreviewProvider {
    static var previews: some View {
        SpirographView()
    }
}
