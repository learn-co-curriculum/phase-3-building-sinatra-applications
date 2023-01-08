import React, { useState } from 'react'

function ProgressItems({date, name, reps, sets, weights}) {
    const [editClick, setEditClick] = useState(false)
    const classNameTernary = editClick ? 'update-list-items' : 'update-list-items hidden'
    const saveClassNameTernary = editClick ? 'submit-btn btn' : 'hidden'

    return (
        <div>
            <li className="list-items">
                <p className="list-exercise"><strong>Exercise:</strong></p>
                <p className="list-exercise"><strong>Target Muscle: </strong> </p>
                <p className="list-exercise"><strong>Sets: </strong></p>
                <p className="list-exercise"><strong>Reps:</strong></p>
                <div className="btn exercise-btn" onClick={() => setEditClick(!editClick)}><p className="btn-text">Edit</p></div>
            </li>
            {/* <EditExerciseForm 
                name={name}
                muscle={muscle}
                reps={reps}
                sets={sets}
            /> */}
            <form type="submit">
                <button className={saveClassNameTernary}>Save</button>
            </form>
        </div>
    )
}

export default ProgressItems