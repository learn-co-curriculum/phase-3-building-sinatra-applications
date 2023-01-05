import React from 'react'
import { Link } from 'react-router-dom'

function NavBar() {
    return (
    <nav className="nav-bar">
        <Link className="nav-btn" to='/workouts'>Workouts</Link>
        <Link className="nav-btn" to='/exercises'>Exercises</Link>
    </nav>
    )
}

export default NavBar