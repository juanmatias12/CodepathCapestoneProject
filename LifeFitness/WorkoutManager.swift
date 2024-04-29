//
//  WorkoutManager.swift
//  LifeFitness
//
//  Created by Juan Matias on 4/23/24.
//

import Foundation
import SwiftUI

class WorkoutManager: ObservableObject {
    @Published var currentWorkout: Workout? = nil
    @Published var isWorkoutActive = false

    func startNewWorkout() {
        currentWorkout = Workout(exercises: [])  // Ensure a new Workout is created
        isWorkoutActive = true
    }

    func finishWorkout() {
        // Logic to save the workout
        currentWorkout = nil
        isWorkoutActive = false
    }
}

