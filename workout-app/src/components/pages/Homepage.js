import React from 'react';
import { Link } from 'react-router-dom'

function Homepage() {
    

    return (
        <div>
            <nav>
                <Link className="btn" to='/workout'>Workouts</Link>
            </nav>
        </div>
    )
}

export default Homepage;