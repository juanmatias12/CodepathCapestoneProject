//
//  NameWorkoutView.swift
//  LifeFitness
//
//  Created by Juan Matias on 4/23/24.
//

import Foundation
import SwiftUI
struct NameWorkoutView: View {
    @Binding var workout: Workout
    var onFinish: () -> Void

    var body: some View {
        VStack {
            TextField("Enter Workout Name", text: $workout.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Save") {
                onFinish()
            }
            .padding()
        }
    }
}

