//
//  HistoryView.swift
//  LifeFitness
//
//  Created by Juan Matias on 4/22/24.
//

import Foundation
import SwiftUI

import SwiftUI

struct HistoryView: View {
    @State private var workouts: [Workout] = []

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach(workouts, id: \.id) { workout in
                    NavigationLink(destination: InsideWorkoutDetailView(workout: workout)) {
                        VStack {
                            Text(workout.name)
                            Text(workout.dateFormatted)
                        }
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Workout History")
        .onAppear {
            workouts = WorkoutDataManager.loadWorkouts()
        }
    }
}



struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
