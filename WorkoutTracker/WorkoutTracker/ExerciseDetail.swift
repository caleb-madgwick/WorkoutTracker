//
//  ExerciseDetail.swift
//  WorkoutTracker
//
//  Created by Caleb Madgwick on 9/10/20.
//

import SwiftUI

struct ExerciseDetail: View {
    var exercise: Exercise
    @State private var sets = 5
    @State private var reps = 12
    @State private var weight = 10.0
    @State private var name = ""
    
    var unit = ["Kilograms", "Pounds"]
    
    @State private var selectedUnit = 0
    
    var body: some View {
        VStack {
            Image("dumbbell")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .navigationTitle(exercise.name)
            Form {
                
                NavigationLink(destination: ExerciseList()) {
                    Text("Change exercise")
                }
                
                Stepper("Number of sets: \(sets)", value: $sets, in: 1...20)
                
                Stepper("Number of reps: \(reps)", value: $reps, in: 1...50)
                
                Picker(selection: $selectedUnit, label: Text("Unit (kg/lb)")) {
                    ForEach(0 ..< unit.count) {
                        Text(self.unit[$0])
                        
                    }
                }
                
                let roundedWeight = String(format: "%.1f", weight)
                
                Stepper("Weight: \(roundedWeight) kgs", value: $weight, in: 1...200, step: 0.5)
                
                
                
            }
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Submit")
            }
            
        }
        
    }
    
}

struct ExerciseDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ExerciseDetail(exercise: testData[0])
            
        }
    }
}
