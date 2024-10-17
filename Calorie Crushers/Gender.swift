//
//  Gender.swift
//  Calorie Crushers
//
//  Created by Aman Kumar on 10/17/24.
//

import SwiftUI

struct GenderSelectionView: View {
    @State private var selectedGender: String = "Male"

    var body: some View {
        VStack {
            Text("What's your gender?")
                .font(.title)
                .padding()

            Picker(selection: $selectedGender, label: Text("Select your gender")) {
                Text("Female").tag("Female")
                Text("Male").tag("Male")
                Text("Other").tag("Other")
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

struct GenderSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        GenderSelectionView()
    }
}
