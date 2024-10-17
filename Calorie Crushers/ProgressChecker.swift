//
//  ProgressChecker.swift
//  Calorie Crushers
//
//  Created by Aman Kumar on 10/17/24.
//

import SwiftUI
import Charts

struct ProgressView: View {
    let progressData = [
        DailyProgress(day: "M", calories: 1200),
        DailyProgress(day: "T", calories: 1400),
        DailyProgress(day: "W", calories: 1700),
        DailyProgress(day: "T", calories: 1500),
        DailyProgress(day: "F", calories: 1800),
        DailyProgress(day: "S", calories: 1600),
        DailyProgress(day: "S", calories: 2000)
    ]

    var body: some View {
        VStack {
            Text("Weekly Progress")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)

            Chart {
                ForEach(progressData) { data in
                    LineMark(
                        x: .value("Day", data.day),
                        y: .value("Calories", data.calories)
                    )
                }
            }
            .frame(height: 200)
            .padding()
            
            Spacer()
        }
        .padding()
    }
}

struct DailyProgress: Identifiable {
    let id = UUID()
    let day: String
    let calories: Double
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
