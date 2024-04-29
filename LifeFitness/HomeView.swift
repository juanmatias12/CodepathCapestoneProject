//
//  HomeView.swift
//  LitFife
//
//  Created by Juan Matias on 4/16/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(0..<10, id: \.self) { _ in
                        HStack {
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.blue)
                            VStack(alignment: .leading) {
                                Text("User completed a workout")
                                Text("45 minutes ago")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Workout Stream")
        }
        .navigationViewStyle(StackNavigationViewStyle()) // This might help ensure navigation takes full width
    }
}




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
