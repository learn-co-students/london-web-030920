import React from 'react'

const Painting = props => {
  return (
    <div className='painting'>
      <h3>Title: {props.painting.title}</h3>
      <p>Artist: {props.painting.artist.name}</p>
      <img src={props.painting.image} />
    </div>
  )
}

export default Painting
