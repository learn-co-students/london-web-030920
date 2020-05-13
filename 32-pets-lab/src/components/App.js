import React from 'react'

import Filters from './Filters'
import PetBrowser from './PetBrowser'

const deepClone = stuff => JSON.parse(JSON.stringify(stuff))

class App extends React.Component {
  state = {
    pets: [],
    filters: {
      type: 'all'
    }
  }

  adoptPet = petId => {
    // const pets = [...this.state.pets]
    // const originalPet = pets.find(pet => pet.id === petId)
    // const petCopy = deepClone(originalPet)
    // petCopy.isAdopted = true
    // const targetIndex = pets.indexOf(originalPet)
    // pets[targetIndex] = petCopy

    const pets = this.state.pets.map(pet =>
      pet.id === petId ? { ...pet, isAdopted: true } : pet
    )

    this.setState({ pets: pets })
  }

  getPets = () => {
    const type = this.state.filters.type
    const url = type === 'all' ? '/api/pets' : `/api/pets?type=${type}`
    fetch(url)
      .then(resp => resp.json())
      .then(pets => {
        this.setState({ pets: pets })
      })
  }

  updateFilter = event => {
    this.setState({
      filters: { ...this.state.filters, type: event.target.value }
    })
  }

  render () {
    return (
      <div className='ui container'>
        <header>
          <h1 className='ui dividing header'>React Animal Shelter</h1>
        </header>
        <div className='ui container'>
          <div className='ui grid'>
            <div className='four wide column'>
              <Filters
                getPets={this.getPets}
                updateFilter={this.updateFilter}
              />
            </div>
            <div className='twelve wide column'>
              <PetBrowser pets={this.state.pets} adoptPet={this.adoptPet} />
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default App
