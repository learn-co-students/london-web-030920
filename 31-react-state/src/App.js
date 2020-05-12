import React from 'react'

import Title from './components/Title'
import SearchBar from './components/SearchBar'
import PaintingList from './components/PaintingList'
import PaintingDetails from './components/PaintingDetails'

import './App.css'

// App
//  -- Title
//  -- SearchBar
//  -- PaintingDetails?
//  -- PaintingList?
//     -< Painting

class App extends React.Component {
  state = {
    selectedPainting: null,
    searchTerm: ''
  }

  selectPainting = painting => {
    this.setState({ selectedPainting: painting })
  }

  deselectPainting = () => {
    this.setState({ selectedPainting: null })
  }

  updateSearchTerm = event => {
    this.setState({ searchTerm: event.target.value })
  }

  render () {
    return (
      <div className='app'>
        <Title />
        <SearchBar updateSearchTerm={this.updateSearchTerm} />
        {this.state.selectedPainting !== null ? (
          <PaintingDetails
            painting={this.state.selectedPainting}
            deselectPainting={this.deselectPainting}
          />
        ) : (
          <PaintingList
            selectPainting={this.selectPainting}
            searchTerm={this.state.searchTerm}
          />
        )}
      </div>
    )
  }
}

export default App
