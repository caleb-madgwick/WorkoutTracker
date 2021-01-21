//
//  ContentView.swift
//  WorkoutTracker
//
//  Created by Caleb Madgwick on 8/10/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: ExerciseStore
    
    var body: some View {
        
        NavigationView {
            List{
                ForEach(store.exercises, id: \.id) { exercise in
                    ExtractedView(exercise: exercise)
                }
                .onMove(perform: moveExercise)
                .onDelete(perform: deleteExercise)
                HStack{
                    Spacer()
                    Text("\(store.exercises.count) Exercises")
                        .foregroundColor(.secondary)
                    Spacer()
                }
                
            }
            .navigationTitle("Exercises")
            
            
            .toolbar {
                ToolbarItem( placement: .navigationBarLeading )
                    { Button( "Add", action: makeExercise )}
                ToolbarItem( placement: .navigationBarTrailing )
                { #if os(iOS)
                    EditButton()
                #endif
                    }
            }
        }
    }
    
    func makeExercise() {
        withAnimation {
            store.exercises.append(Exercise(name: "New Exercise", repCount: 0, weight: 0))
        }
    }
    func moveExercise(from: IndexSet, to: Int) {
        withAnimation {
            store.exercises.move(fromOffsets: from, toOffset: to)
        }
    }
    func deleteExercise(offsets: IndexSet) {
        withAnimation {
            store.exercises.remove(atOffsets:  offsets)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: testStore)
    }
}

struct ExtractedView: View {
    var exercise : Exercise
    var body: some View {
        NavigationLink(destination: ExerciseDetail(exercise: exercise)){
            Image("dumbbell").resizable()
                .frame(width: 50.0, height: 50.0)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(exercise.name)
                Text("Reps: \(exercise.repCount)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text("Weight: \(exercise.weight)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
