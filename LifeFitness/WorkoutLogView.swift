import SwiftUI


// Define a view for adding a new exercise.
import SwiftUI

struct AddExerciseView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var workout: Workout
    @State private var showingAddExercise = false
    @State private var exerciseName: String = ""
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                TextField("Exercise Name", text: $exerciseName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Add Exercise") {
                    let newExercise = Exercise(name: exerciseName, sets: [WorkoutSet(reps: 0, weight: 0)])
                    workout.exercises.append(newExercise)
                    exerciseName = "" // Reset the exercise name field
                    presentationMode.wrappedValue.dismiss() // Dismiss the view
                }
                .disabled(exerciseName.isEmpty)
                .padding()
            }
            .navigationBarTitle("New Exercise", displayMode: .inline)
            .navigationBarItems(trailing: Button("Done") {
                presentationMode.wrappedValue.dismiss() // Dismiss the view
            })
            }
        }
    }


// Define a view for logging each set of an exercise.
struct WorkoutSetView: View {
    var setNumber: Int
    @Binding var workoutSet: WorkoutSet
    
    var body: some View {
        HStack {
            Text("Set \(setNumber)")
            Spacer()
            TextField("Reps", value: $workoutSet.reps, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .frame(width: 80)
            Spacer()
            TextField("Weight", value: $workoutSet.weight, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .frame(width: 80)
        }
    }
}

// Define a view for logging an exercise.
struct ExerciseView: View {
    @Binding var exercise: Exercise
    
    var body: some View {
        List {
            Section(header: Text(exercise.name)) {
                // Add the headers back here if they were removed
                HStack {
                    Text("Set")
                    Spacer()
                    Text("Reps")
                    Spacer()
                    Text("Weight (lbs)")
                }
                
                ForEach($exercise.sets.indices, id: \.self) { index in
                    WorkoutSetView(setNumber: index + 1, workoutSet: $exercise.sets[index])
                }
                .onDelete(perform: { indexSet in
                    exercise.sets.remove(atOffsets: indexSet)
                })
                
                Button("Add Set") {
                    exercise.sets.append(WorkoutSet(reps: 0, weight: 0))
                }
            }
        }
    }
}

// Define the main view for logging a workout.
struct WorkoutLoggingView: View {
    @Binding var workout: Workout
    @Binding var isWorkoutSessionActive: Bool
    @State private var showingAddExercise = false
    @State private var showingNameEntry = false  // State to show name entry sheet
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            TabView {
                ForEach($workout.exercises.indices, id: \.self) { index in
                    ExerciseView(exercise: $workout.exercises[index])
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .navigationBarTitle("Log Workout", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: {
                    showingAddExercise.toggle()
                }) {
                    Image(systemName: "plus.circle.fill")
                        .accessibilityLabel("Add exercise")
                },
                trailing: Button("Finish Workout") {
                    showingNameEntry = true
                }
            )
            .sheet(isPresented: $showingAddExercise) {
                AddExerciseView(workout: $workout)
            }
            .sheet(isPresented: $showingNameEntry) {
                NameWorkoutView(workout: $workout) {
                    finishWorkout()
                }
            }
        }
        .onDisappear {
            isWorkoutSessionActive = false
        }
    }

    private func finishWorkout() {
        var allWorkouts = WorkoutDataManager.loadWorkouts()
        allWorkouts.append(workout)
        WorkoutDataManager.saveAllWorkouts(workouts: allWorkouts)
        isWorkoutSessionActive = false
        presentationMode.wrappedValue.dismiss()
    }
}




// Placeholder for the workout summary view.
struct WorkoutSummaryView: View {
    var workout: Workout

    var body: some View {
        // Present a summary of the workout
        // This is where you'd layout the view with the details of the completed workout
        Text("Workout Summary")
    }
}



struct WorkoutDetailView: View {
    var workout: Workout

    var body: some View {
        List {
            ForEach(workout.exercises, id: \.id) { exercise in
                Section(header: Text(exercise.name)) {
                    ForEach(exercise.sets, id: \.id) { set in
                        Text("\(set.reps) reps at \(set.weight) lbs")
                    }
                }
            }
        }
        .navigationTitle("Workout Details")
    }
}

    
    // Preview provider for SwiftUI Canvas
struct WorkoutLoggingView_Previews: PreviewProvider {
    @State static var dummyWorkout = Workout(exercises: []) // Create a dummy workout
    @State static var dummySessionActive = true // Create a dummy session active state

    static var previews: some View {
        // Provide the dummy bindings to the WorkoutLoggingView
        WorkoutLoggingView(workout: $dummyWorkout, isWorkoutSessionActive: $dummySessionActive)
    }
}
