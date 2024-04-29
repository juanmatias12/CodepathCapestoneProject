//
//  WorkoutDataManager.swift
//  LifeFitness
//
//  Created by Juan Matias on 4/23/24.
//

import Foundation
import SwiftUI

struct WorkoutDataManager {
    static let workoutsKey = "SavedWorkouts"

    static func loadWorkouts() -> [Workout] {
        if let savedWorkouts = UserDefaults.standard.data(forKey: workoutsKey),
           let decodedWorkouts = try? JSONDecoder().decode([Workout].self, from: savedWorkouts) {
            return decodedWorkouts
        }
        return []
    }

    static func saveAllWorkouts(workouts: [Workout]) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(workouts) {
            UserDefaults.standard.set(encoded, forKey: workoutsKey)
        }
    }
}
