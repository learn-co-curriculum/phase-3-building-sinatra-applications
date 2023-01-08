import React, { useState, useEffect } from 'react'

import NavBar from './NavBar'
import ProgressItems from './ProgressItems'

function Progress({dateForDatabase, date}) {
    const [progressData, setProgressData] = useState([])

    useEffect(() => {
        fetch("http://localhost:9292/progress")
        .then(r => r.json())
        .then(d => setProgressData(d))
    }, []) 

    const displayProgress = progressData?.map((progress) => {
        return (
            <ProgressItems
                date={progress.date}
                name={progress.name}
                reps={progress.reps_sets_weights.reps}
                sets={progress.reps_sets_weights.sets}
                weights={progress.reps_sets_weights.weights}
            />
        )
    })

    return (
    <div className="background-color parent-page-content">
        <div className="side-bar collapsed">
            <NavBar />
        </div>
        <div className="page-content">
            <h2 className="header-font today-workout">Progress: </h2>
            {displayProgress}
        </div>
    </div>
    )
}

export default Progress