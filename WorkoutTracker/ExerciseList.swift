//
//  ExerciseList.swift
//  WorkoutTracker
//
//  Created by Caleb Madgwick on 20/01/21.
//

import SwiftUI

struct ExerciseList: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< ExerciseListData.count) { value in
                    Text(ExerciseListData[value])
                }
            }
            .navigationTitle("Exercise List")
        }
    }
}

var ExerciseListData =
    [
        "Barbell Bench Press",
        "Incline Barbell Bench Press",
        "Dumbbell Bench Press",
        "Incline Dumbbell Bench Press",
        "Weighted Dips for Chest",
        "Decline Bench Press",
        "Barbell Deadlift",
        "Bent-Over Barbell Row",
        "Weighted Pull-ups",
        "Wide-Grip Pull-up",
        "Standing T-Bar Row",
        "Wide-Grip Pulldown",
        "Close-Grip Pulldown",
        "Seated Cable Row",
        "Cable Crunch",
        "Hanging Dumbbell Knee Raise",
        "Landmine",
        "Captain’s Chair Leg Raise",
        "Ab-Wheel Rollout",
        "Plank",
        "Weighted Decline Sit-up",
        "Bicycle",
        "Flag",
        "Standing Barbell Overhead Press",
        "Seated Dumbbell Overhead Press",
        "Arnold Shoulder Press",
        "Bent-Over Reverse Fly",
        "Lateral Raise",
        "Front Dumbbell Raise",
        "Handstand Push-ups",
        "Barbell Squat",
        "Standing Calf Raise",
        "Calf Press",
        "Romanian Deadlift",
        "Leg Press",
        "Hack Squat",
        "Dumbbell Lunge",
        "Seated Hammer Curl",
        "Standing Barbell Curl",
        "Inverted Rows",
        "Zottman Curl",
        "Weighted Chin-ups",
        "Incline-Bench Curl",
        "Preacher EZ-Bar Curl",
        "Standing Cable Curl",
        "Close-Grip Bench Press",
        "Skullcrusher",
        "Weighted Dips",
        "Cable Push-Down",
        "Dumbbell Kickback",
        "Seated Overhead Dumbbell Extension",
    ].sorted()





struct ExerciseList_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseList()
    }
}
