import React from 'react'

// age
// 4
// gender
// "male"
// id
// "9750e959-f8ef-465f-9e13-16323454dc1f"
// isAdopted
// false
// name
// "Hemingway"
// type
// "micropig"
// weight
// 5

class Pet extends React.Component {
  render () {
    const pet = this.props.pet
    return (
      <div className='card'>
        <div className='content'>
          <a className='header'>
            {pet.gender === 'female' ? '♀' : '♂'}
            {pet.name}
          </a>
          <div className='meta'>
            <span className='date'>{pet.type}</span>
          </div>
          <div className='description'>
            <p>Age: {pet.age}</p>
            <p>Weight: {pet.weight}</p>
          </div>
        </div>
        <div className='extra content'>
          {pet.isAdopted ? (
            <button className='ui disabled button'>Already adopted</button>
          ) : (
            <button
              className='ui primary button'
              onClick={() => this.props.adoptPet(pet.id)}
            >
              Adopt pet
            </button>
          )}
        </div>
      </div>
    )
  }
}

export default Pet
