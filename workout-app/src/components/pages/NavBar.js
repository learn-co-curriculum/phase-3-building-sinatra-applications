import React from 'react'
import { Link } from 'react-router-dom'

function NavBar() {
    return (
    <nav className="nav-bar">
        <Link className="nav-btn" to='/'>WORKOUTS</Link>
        <Link className="nav-btn" to='/exercises'>EXERCISES</Link>
        <Link className="nav-btn" to='/progress'>PROGRESS</Link>
    </nav>
    )
}

export default NavBar