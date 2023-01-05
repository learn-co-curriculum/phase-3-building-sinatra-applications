import { Link } from 'react-router-dom';

const Navbar = () => {
    return (<>
        <li>
            <Link to ="/">
                Home 
            </Link>
        </li>
        <li>
            <Link to ="/workout">
                Workout
            </Link>        
        </li>
        <li>
            <Link to ="/edit">
                Edit workout 
            </Link>        
        </li>
    </>)
};

export default Navbar;