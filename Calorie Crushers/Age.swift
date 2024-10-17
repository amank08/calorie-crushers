//
//  Age.swift
//  Calorie Crushers
//
//  Created by Aman Kumar on 10/17/24.
//

import SwiftUI

struct AgeSelectionView: View {
    @State private var selectedAge: Int = 18

    var body: some View {
        VStack {
            Text("What's your Age?")
                .font(.title)
                .padding()

            Picker(selection: $selectedAge, label: Text("Select your age")) {
                ForEach(17..<100) {
                    Text("\($0)").tag($0)
                }
            }
            .pickerStyle(WheelPickerStyle())

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

struct AgeSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        AgeSelectionView()
    }
}
