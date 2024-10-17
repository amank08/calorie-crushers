//
//  MealSelection.swift
//  Calorie Crushers
//
//  Created by Aman Kumar on 10/17/24.
//

import SwiftUI

struct MealSelectionView: View {
    var meal: Meal = Meal(name: "Avocado Dish", calories: 457, protein: 22, carbs: 1.8, fats: 19)

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image("avocado") // Add your image in Assets
                .resizable()
                .frame(height: 200)
                .aspectRatio(contentMode: .fill)
            
            Text(meal.name)
                .font(.title)
                .fontWeight(.bold)
            
            Text("100g | \(meal.calories) cal")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack {
                NutritionView(label: "Protein", value: meal.protein, unit: "g", color: .green)
                NutritionView(label: "Carbs", value: meal.carbs, unit: "g", color: .yellow)
                NutritionView(label: "Fat", value: meal.fats, unit: "g", color: .red)
            }

            Spacer()
            
            Button(action: {
                // Add action here
            }) {
                Text("Get Good Nutrition Now")
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct NutritionView: View {
    var label: String
    var value: Double
    var unit: String
    var color: Color
    
    var body: some View {
        VStack {
            Text(label)
                .font(.headline)
                .foregroundColor(color)
            Text("\(value, specifier: "%.1f")\(unit)")
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity)
    }
}

struct Meal {
    var name: String
    var calories: Double
    var protein: Double
    var carbs: Double
    var fats: Double
}

struct MealSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        MealSelectionView()
    }
}
