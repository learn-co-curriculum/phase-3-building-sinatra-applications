import './index.css'
import React, {useState, useEffect} from 'react';
import {Switch, Route} from 'react-router-dom'

import WorkoutPage from './components/pages/WorkoutPage'
import Progress from './components/pages/Progress'

function App() {
  const [data, setData] = useState([])
  const today = new Date();
    let date = (today.getMonth() + 1) + '/' + today.getDate() + '/' + today.getFullYear()
    let dateForDatabase = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate()
    const day = today.getDay();
    let workout;

    console.log(dateForDatabase)

    if (day === 1) {
        workout = data[0]?.name
    }
    else if (day === 2) {
        workout = data[1]?.name
    }
    else if (day === 3) {
        workout = data[2]?.name
    }
    else if (day === 4) {
        workout = data[3]?.name
    }
    else if (day === 5) {
        workout = data[4]?.name
    }
    else if (day === 6) {
        workout = data[5]?.name
    }
    else {
        workout = "Rest Day"
    }

  useEffect(() => {
    fetch("http://localhost:9292/workout")
    .then(r => r.json())
    .then(d => setData(d))
  }, [])

  return (
    <div>
      <Switch>

        <Route exact path='/'>
          <WorkoutPage data={data} date={date} dateForDatabase={dateForDatabase} today={today} workout={workout} day={day}/>
        </Route>

        <Route path='/progress'>
          <Progress dateForDatabase={dateForDatabase} date={date} />
        </Route>

      </Switch>
    </div>
  );
}

export default App;
