// WorkoutStarterView.swift
import Foundation
import SwiftUI

struct WorkoutStarterView: View {
    @State private var isWorkoutSessionActive = false
    @State private var newWorkout = Workout(exercises: [])

    var body: some View {
        VStack {
            if isWorkoutSessionActive {
                WorkoutLoggingView(workout: $newWorkout, isWorkoutSessionActive: $isWorkoutSessionActive)
            } else {
                Button("Start New Workout") {
                    newWorkout = Workout(exercises: [])
                    isWorkoutSessionActive = true
                }
            }
        }
    }
}




struct WorkoutStarterView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutStarterView()
    }
}
