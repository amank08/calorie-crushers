//
//  DailyNutrition.swift
//  Calorie Crushers
//
//  Created by Aman Kumar on 10/17/24.
//

import SwiftUI

struct DailyNutritionView: View {
    let meals = [
        Meal(name: "Salad with eggs", calories: 294, protein: 12, carbs: 42, fats: 32),
        Meal(name: "Avocado Dish", calories: 294, protein: 12, carbs: 12, fats: 32),
        Meal(name: "Pancakes", calories: 300, protein: 12, carbs: 42, fats: 22)
    ]

    var body: some View {
        VStack {
            Text("Daily Nutrition")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            List(meals) { meal in 
                HStack {
                    VStack(alignment: .leading) {
                        Text(meal.name)
                            .font(.headline)
                        Text("\(meal.calories, specifier: "%.0f") kcal - \(meal.protein)g Protein")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    HStack {
                        NutritionValueView(value: meal.protein, label: "P")
                        NutritionValueView(value: meal.carbs, label: "C")
                        NutritionValueView(value: meal.fats, label: "F")
                    }
                }
            }
        }
    }
}

struct NutritionValueView: View {
    var value: Double
    var label: String
    
    var body: some View {
        VStack {
            Text("\(value, specifier: "%.0f")g")
                .font(.subheadline)
            Text(label)
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

struct DailyNutritionView_Previews: PreviewProvider {
    static var previews: some View {
        DailyNutritionView()
    }
}
