import React from 'react'

import Title from './Title'
import PaintingList from './PaintingList'

import './App.css'

// App
//  -- Title
//  -- PaintingList
//     -< Painting

const App = () => {
  const name = 'cool'
  return (
    <div id='1' className='App'>
      <Title name={name} />
      <PaintingList name={name} />
    </div>
  )
}

export default App
