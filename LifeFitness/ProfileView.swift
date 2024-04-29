//
//  ProfileView.swift
//  LifeFitness
//
//  Created by Juan Matias on 4/22/24.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section(header: Text("Activity Summary")) {
                HStack {
                    Text("This Week")
                    Spacer()
                    Text("3 Workouts")
                }
                HStack {
                    Text("This Month")
                    Spacer()
                    Text("12 Workouts")
                }
            }
            
            Section(header: Text("Intensity")) {
                HStack {
                    Text("Weekly Intensity")
                    Spacer()
                    Text("Moderate")
                }
                HStack {
                    Text("Monthly Intensity")
                    Spacer()
                    Text("High")
                }
            }
            
            Section(header: Text("Goals")) {
                Text("Set up your goals")
            }
            
            Section(header: Text("Best Efforts")) {
                Text("5K Run: 23:17")
                Text("Deadlift: 405 lbs")
                // Add more best efforts as desired
            }
        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
