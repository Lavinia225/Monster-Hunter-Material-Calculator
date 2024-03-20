import {Routes, Route} from 'react-router-dom'
import NavBar from './NavBar'
import Home from './pages/Home'
import Calc from './pages/Calc'

function App() {

  return (
    <>
    <NavBar />
      <Routes>
        <Route path='/' element={<Home />}/>
        <Route path='/calc' element={<Calc />}/>
      </Routes>
    </>
  )
}

export default App