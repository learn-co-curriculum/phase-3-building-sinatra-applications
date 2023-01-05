import React from 'react'
import { Link } from 'react-router-dom'

import NavBar from './NavBar'

function WorkoutPage() {

    return (
        <div className="background-color">
            <div className="workouts">

            </div>
            <div className="side-bar collapsed">
                <NavBar />
            </div>
        </div>
    )
}

export default WorkoutPage