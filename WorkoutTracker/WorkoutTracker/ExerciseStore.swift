//
//  ExerciseStore.swift
//  WorkoutTracker
//
//  Created by Caleb Madgwick on 18/01/21.
//

import Foundation

class ExerciseStore: ObservableObject {
    @Published var exercises: [Exercise]
    
    init(Exercises: [Exercise] = [] ){
        self.exercises = Exercises
    }
}

let testStore = ExerciseStore(Exercises: testData)
