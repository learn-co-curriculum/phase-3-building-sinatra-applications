import { BrowserRouter as Router, Routes, Route } from "react-router-dom"
import Navbar from "./components/navbar/navbar"
import Edit from "./pages/edit"
import Home from "./pages/home"
import Workout from "./pages/workout"
import './App.css';

function App() {
  return (
    <Router>
      <Navbar />
      <Routes>
        <Route path="/" exact component={Home}/>
        <Route path="/workout" component={Workout}/>
        <Route path="/edit" component={Edit}/>
      </Routes>
    </Router>
  );
}

export default App;
