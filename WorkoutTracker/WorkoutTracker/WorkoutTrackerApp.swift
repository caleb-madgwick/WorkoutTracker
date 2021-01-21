//
//  WorkoutTrackerApp.swift
//  WorkoutTracker
//
//  Created by Caleb Madgwick on 8/10/20.
//

import SwiftUI

@main
struct WorkoutTrackerApp: App {
    @StateObject private var store = ExerciseStore()
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}

struct WorkoutTrackerApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
