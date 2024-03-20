import { NavLink } from "react-router-dom";

function NavBar(){
    return(
        <nav>
            <NavLink to='/'>Home</NavLink>
            <NavLink to='/calc'>Calc</NavLink>
        </nav>
    )
}

export default NavBar