import React, {useState} from 'react'

import EditExerciseForm from './EditExerciseForm'

function EachExercise({name, muscle, reps, sets, dateForDatabase, today}) {
    const [editClick, setEditClick] = useState(false)
    const [weight, setWeight] = useState(0)
    const [inputReps, setInputReps] = useState(0)
    let fields = []
    let i = 0;
    const classNameTernary = editClick ? 'update-list-items' : 'update-list-items hidden'
    const saveClassNameTernary = editClick ? 'submit-btn btn' : 'hidden'

   for (i = 0; i < sets; i++) {
        fields.push(<EditExerciseForm i={i} setInputReps={setInputReps} setWeight={setWeight} reps={reps} name={name} editClick={editClick} classNameTernary={classNameTernary}/>)
    }

    const editForm = fields.map((set) => {
        return (
            set
        )
    })

    function saveExerciseProgress(e) {
        e.preventDefault()

        fetch(`http://localhost:9292/progress/${dateForDatabase}`, {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                date: `${today.getFullYear()}-${today.getMonth() + 1}-${today.getDate()}`,
                name: name,
                reps_sets_weights: {
                    sets: sets,
                    reps: {
                        set1: inputReps,
                        set2: inputReps,
                        set3: inputReps
                    },
                    weights: {
                        set1: weight,
                        set2: weight,
                        set3: weight
                    }
                }
            })
        })
    }

    return (
        <div>
            <li className="list-items">
                <p className="list-exercise"><strong>Exercise:</strong> {name}</p>
                <p className="list-exercise"><strong>Target Muscle: </strong> {muscle}</p>
                <p className="list-exercise"><strong>Sets: </strong> {sets}</p>
                <p className="list-exercise"><strong>Reps:</strong> {reps} </p>
                <div className="btn exercise-btn" onClick={() => setEditClick(!editClick)}><p className="btn-text">Edit</p></div>
            </li>
            {/* <EditExerciseForm 
                name={name}
                muscle={muscle}
                reps={reps}
                sets={sets}
            /> */}
            <form onSubmit={saveExerciseProgress} type="submit">
                {editForm}
                <button className={saveClassNameTernary}>Save</button>
            </form>
        </div>
    )
}

export default EachExercise