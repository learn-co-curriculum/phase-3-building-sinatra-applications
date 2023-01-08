import React from 'react'

function EditExerciseForm({setInputReps, setWeight, name, muscle, reps, i, editClick, classNameTernary}) {

    

    return (
            <li className={classNameTernary}>
                <p className="input-title-sets">Set: {i + 1}</p>
                <p className="input-title-weight">Weight: </p>
                <input onChange={(e) => setWeight(e.target.value)}className="inputs-weight" type="number"></input>
                <p className="input-title-reps">Reps: </p>
                <input onChange={(e) => setInputReps(e.target.value)} className="inputs" type="number" placeholder={reps}></input>
            </li>
    )
}

export default EditExerciseForm