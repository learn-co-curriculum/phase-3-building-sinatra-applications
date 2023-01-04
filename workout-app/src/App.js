import './index.css'
import React, {useState, useEffect} from 'react';
import {Switch, Route} from 'react-router-dom'

import Homepage from './components/pages/Homepage'

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

        <Route path='/'>
          <Homepage />
        </Route>

        <Route>
          
        </Route>
      </Switch>
    </div>
  );
}

export default App;
