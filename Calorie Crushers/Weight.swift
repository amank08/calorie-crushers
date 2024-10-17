//
//  Weight.swift
//  Calorie Crushers
//
//  Created by Aman Kumar on 10/17/24.
//

import SwiftUI

struct WeightSelectionView: View {
    @State private var weight: Double = 60.0
    @State private var unit: String = "Kg"

    var body: some View {
        VStack {
            Text("What's your current weight right now?")
                .font(.title)
                .padding()

            Picker(selection: $unit, label: Text("Select unit")) {
                Text("Kg").tag("Kg")
                Text("Lbs").tag("Lbs")
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            Slider(value: $weight, in: 30...150, step: 0.5) {
                Text("Weight")
            }
            .padding()

            Text("\(weight, specifier: "%.1f") \(unit)")
                .font(.title)
                .padding()

            Button(action: {
                // Next screen navigation
            }) {
                Text("Continue")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
    }
}

struct WeightSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        WeightSelectionView()
    }
}

