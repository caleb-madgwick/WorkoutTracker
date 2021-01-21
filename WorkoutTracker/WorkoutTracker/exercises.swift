//
//  exercises.swift
//  WorkoutTracker
//
//  Created by Caleb Madgwick on 8/10/20.
//

import Foundation
class Exercise : Identifiable {
    var id = UUID()
    var name: String
    var repCount: Int
    var weight: Int
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }

    init(name: String, repCount: Int, weight: Int) {
        self.name = name
        self.repCount = repCount
        self.weight = weight
    }
    func addRep(){
        repCount+=1
    }
}

var testData = [
    Exercise(name: "Dumbell Press", repCount: 8, weight: 40),
    Exercise(name: "Incline Dumbell Press", repCount: 8, weight: 20),
    Exercise(name: "Pec Flys", repCount: 8, weight: 30),
    Exercise(name: "Shoulder Press", repCount: 8, weight: 16),
    Exercise(name: "Laterial Raises", repCount: 8, weight: 12),
    Exercise(name: "Tricep Pushdown", repCount: 8, weight: 10)
]
