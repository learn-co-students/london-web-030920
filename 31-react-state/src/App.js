import React from 'react'

import Title from './components/Title'
import PaintingList from './components/PaintingList'
import PaintingDetails from './components/PaintingDetails'
import Test from './components/Test'

import './App.css'

// App
//  -- Test
//  -- Title
//  -- PaintingDetails?
//  -- PaintingList?
//     -< Painting

class App extends React.Component {
  state = {
    selectedPainting: null
  }

  selectPainting = painting => {
    this.setState({ selectedPainting: painting })
  }

  deselectPainting = () => {
    this.setState({ selectedPainting: null })
  }

  render () {
    return (
      <div className='app'>
        <Test />
        <Title />
        {this.state.selectedPainting !== null ? (
          <PaintingDetails
            painting={this.state.selectedPainting}
            deselectPainting={this.deselectPainting}
          />
        ) : (
          <PaintingList selectPainting={this.selectPainting} />
        )}
      </div>
    )
  }
}

export default App
