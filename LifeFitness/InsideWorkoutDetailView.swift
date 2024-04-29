//
//  InsideWorkoutDetailView.swift
//  LifeFitness
//
//  Created by Juan Matias on 4/23/24.
//

import Foundation
import SwiftUI

struct InsideWorkoutDetailView: View {
    @State var workout: Workout // Using @State because you might want to modify it

    var body: some View {
        List {
            Section(header: Text("Exercises")) {
                ForEach(workout.exercises, id: \.id) { exercise in
                    Text(exercise.name) // Assuming an 'Exercise' has a 'name' property
                    // Add more exercise details here as needed
                }
            }
            // Optionally add controls to modify and save changes to the workout
        }
        .navigationTitle(workout.name)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Save Changes") {
                    // Implement the save functionality if changes are made
                    saveChanges()
                }
            }
        }
    }

    private func saveChanges() {
        // Implement saving the modified workout details
        // Possibly update it back in UserDefaults or wherever it's stored
    }
}


