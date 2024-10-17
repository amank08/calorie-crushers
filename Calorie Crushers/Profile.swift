//
//  Profile.swift
//  Calorie Crushers
//
//  Created by Aman Kumar on 10/17/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("My Profile")
                .font(.largeTitle)
                .bold()
                .padding()

            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()

            Text("Devansh Desai")
                .font(.title)

            List {
                NavigationLink(destination: Text("Daily Intake Screen")) {
                    Text("Daily Intake")
                }
                NavigationLink(destination: Text("My Meals Screen")) {
                    Text("My Meals")
                }
                NavigationLink(destination: Text("Barcode Scan Screen")) {
                    Text("Barcode Scan")
                }
                NavigationLink(destination: Text("Daily Nutrition Screen")) {
                    Text("Daily Nutrition")
                }
                Button(action: {
                    // Logout logic
                }) {
                    Text("Log out")
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
