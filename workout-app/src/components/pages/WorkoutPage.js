import React, {useEffect, useState} from 'react'
import { Link } from 'react-router-dom'

import NavBar from './NavBar'
import EachExercise from './EachExercise'

function WorkoutPage({data, day, workout, dateForDatabase, today}) {
    const [exercisesOfDay, setExercisesOfDay] = useState([])

    useEffect(() => {
        fetch(`http://localhost:9292/workout/${day}`)
        .then(r => r.json())
        .then(d => setExercisesOfDay(d))
    }, [])

    const todaysWorkout = exercisesOfDay?.exercises?.map((exercise) => {
        return(
            <EachExercise
                name={exercise.name}
                muscle={exercise.muscle}
                reps={exercise.reps}
                sets={exercise.sets}
                workout={workout}
                dateForDatabase={dateForDatabase}
                today={today}
            />
        )
    })

    return (
        <div className="background-color parent-page-content">
            <div className="side-bar collapsed">
                <NavBar />
            </div>
            <div className="page-content">
                <h2 className="header-font today-workout">Today's Workout: {workout}</h2>
                {todaysWorkout}
            </div>
        </div>
    )
}

export default WorkoutPage