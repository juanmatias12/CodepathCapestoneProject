    //
    //  TabView.swift
    //  LifeFitness
    //
    //  Created by Juan Matias on 4/22/24.
    //

    import Foundation
    import SwiftUI


struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView() // Will be updated to show activity feed
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            HistoryView() // Shows workout history
                .tabItem {
                    Label("History", systemImage: "clock")
                }

            WorkoutStarterView() // Starts workouts
                .tabItem {
                    Label("Workout", systemImage: "dumbbell")
                }

            ProfileView() // User profile and activity
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        .accentColor(.blue) // Preserves the color scheme
    }
}


    struct MainTabView_Previews: PreviewProvider {
        static var previews: some View {
            MainTabView()
        }
    }
