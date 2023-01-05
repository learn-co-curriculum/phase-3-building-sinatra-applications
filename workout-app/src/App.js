import './index.css'
import React, {useState, useEffect} from 'react';
import {Switch, Route} from 'react-router-dom'

import WorkoutPage from './components/pages/WorkoutPage'

function App() {
  const [exercises, setExercises] = useState([])

  useEffect(() => {
    fetch("http://localhost:9292/exercise")
    .then(r => r.json())
    .then(d => setExercises(d))
  }, [])

  console.log(exercises)

  return (
    <div>
      <Switch>

        <Route exact path='/'>
          <WorkoutPage />
        </Route>

      </Switch>
    </div>
  );
}

export default App;
