puts "🌱 Seeding data..."

w1 = Workout.create(name: "Push Day - 1", completed: false)
w2 = Workout.create(name: "Pull Day - 1", completed: false)
w3 = Workout.create(name: "Leg Day - 1", completed: false)
w4 = Workout.create(name: "Push Day - 2", completed: false)
w5 = Workout.create(name: "Pull Day - 2", completed: false)
w6 = Workout.create(name: "Leg Day - 2", completed: false)
w7 = Workout.create(name: "Rest Day", completed: false)

rs1 = RepAndSet.create(reps: 15, sets: 3)
rs2 = RepAndSet.create(reps: 10, sets: 3)
rs3 = RepAndSet.create(reps: 6, sets: 4)
rs4 = RepAndSet.create(reps: 8, sets: 4)
rs5 = RepAndSet.create(reps: 12, sets: 3)
rs5 = RepAndSet.create(reps: 5, sets: 4)

Exercise.create(name: "Bench Press", muscle: "Chest", reps: 10, sets: 3, workout_id: w1.id)
Exercise.create(name: "Bench Press", muscle: "Chest", reps: 8, sets: 3, workout_id: w4.id)
Exercise.create(name: "Dumbbell Press", muscle: "Chest", reps: 12, sets: 3, workout_id: w4.id)
Exercise.create(name: "Incline Dumbbell Press", muscle: "Chest", reps: 12, sets: 3, workout_id: w4.id)
Exercise.create(name: "Cable Flys", muscle: "Chest", reps: 15, sets: 3, workout_id: w1.id)
Exercise.create(name: "Cable Flys", muscle: "Chest", reps: 15, sets: 3, workout_id: w4.id)

Exercise.create(name: "Lat Pulldowns", muscle: "Back", reps: 10, sets: 3, workout_id: w2.id)
Exercise.create(name: "One-Hand Lat Pulldowns", muscle: "Back", reps: 10, sets: 3, workout_id: w2.id)
Exercise.create(name: "Seated Cable Rows", muscle: "Back", reps: 10, sets: 3, workout_id: w2.id)
Exercise.create(name: "Bent-Over Row", muscle: "Back", reps: 8, sets: 3, workout_id: w5.id)
Exercise.create(name: "Preacher Curls", muscle: "Biceps", reps: 8, sets: 3, workout_id: w5.id)
Exercise.create(name: "V-Bar Pulldown", muscle: "Back", reps: 10, sets: 3, workout_id: w5.id)
Exercise.create(name: "Machine Rows", muscle: "Back", reps: 12, sets: 3, workout_id: w5.id)

Exercise.create(name: "Seated Military Press", muscle: "Shoulders", reps: 6, sets: 3, workout_id: w1.id)
Exercise.create(name: "Lateral Raises", muscle: "Shoulders", reps: 15, sets: 3, workout_id: w1.id)
Exercise.create(name: "Lateral Raises", muscle: "Shoulders", reps: 15, sets: 3, workout_id: w4.id)
Exercise.create(name: "Bent-Over Lateral Raises", muscle: "Shoulders", reps: 12, sets: 3, workout_id: w1.id)
Exercise.create(name: "Rear Delt Machine Flys", muscle: "Shoulders", reps: 10, sets: 3, workout_id: w4.id)

Exercise.create(name: "Dumbbell Curls", muscle: "Biceps", reps: 8, sets: 3, workout_id: w2.id)
Exercise.create(name: "Hammer Curls", muscle: "Biceps", reps: 12, sets: 3, workout_id: w2.id)
Exercise.create(name: "EZ Bar Curls", muscle: "Biceps", reps: 10, sets: 3, workout_id: w5.id)

Exercise.create(name: "Cable Tricep Extensions", muscle: "Triceps", reps: 10, sets: 3, workout_id: w1.id)
Exercise.create(name: "Cable Overhead Extension", muscle: "Triceps", reps: 15, sets: 3, workout_id: w4.id)
Exercise.create(name: "Skullcrushers", muscle: "Triceps", reps: 8, sets: 3, workout_id: w4.id)

Exercise.create(name: "Back Squats", muscle: "Legs", reps: 6, sets: 3, workout_id: w3.id)
Exercise.create(name: "Back Squats", muscle: "Legs", reps: 10, sets: 3, workout_id: w6.id)
Exercise.create(name: "Reverse Deadlifts (RDLs)", muscle: "Legs", reps: 10, sets: 3, workout_id: w3.id)
Exercise.create(name: "Leg Press", muscle: "Legs", reps: 8, sets: 3, workout_id: w3.id)
Exercise.create(name: "Leg Press", muscle: "Legs", reps: 15, sets: 3, workout_id: w6.id)
Exercise.create(name: "Hamstring Curls", muscle: "Legs", reps: 10, sets: 3, workout_id: w3.id)
Exercise.create(name: "Leg Extensions", muscle: "Legs", reps: 12, sets: 3, workout_id: w3.id)
Exercise.create(name: "Leg Extensions", muscle: "Legs", reps: 12, sets: 3, workout_id: w6.id)
Exercise.create(name: "Seated Calf Raises", muscle: "Legs", reps: 15, sets: 3, workout_id: w3.id)
Exercise.create(name: "Bulgarian Split Squats", muscle: "Legs", reps: 8, sets: 3, workout_id: w6.id)
Exercise.create(name: "Standing Calf Raises", muscle: "Legs", reps: 15, sets: 3, workout_id: w6.id)

Progress.create(date: Date.new(2023, 1, 7), name: "test", reps_sets_weights: {
    sets: 4,
    reps: {
        "set1" => 12,
        "set2" => 12,
        "set3" => 12
    },
    weights: {
        "set1" => 100,
        "set2" => 100,
        "set3" => 100
    }
})

puts "🌱 Done seeding!"
