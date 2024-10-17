//
//  Goals.swift
//  Calorie Crushers
//
//  Created by Aman Kumar on 10/17/24.
//

import SwiftUI

struct GoalSelectionView: View {
    @State private var selectedGoal: String = "Maintain weight"

    var body: some View {
        VStack {
            Text("What goal do you have in mind?")
                .font(.title)
                .padding()

            Picker(selection: $selectedGoal, label: Text("Select your goal")) {
                Text("Lose weight").tag("Lose weight")
                Text("Maintain weight").tag("Maintain weight")
                Text("Gain weight").tag("Gain weight")
            }
            .pickerStyle(SegmentedPickerStyle())
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

struct GoalSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        GoalSelectionView()
    }
}
