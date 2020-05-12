import React from 'react'

const PaintingDetails = props => {
  return (
    <div>
      <h1>{props.painting.title}</h1>
      <h2>
        {props.painting.artist.name} - ({props.painting.artist.birthday} -{' '}
        {props.painting.artist.deathday})
      </h2>
      <button onClick={props.deselectPainting}>BACK</button>
    </div>
  )
}

export default PaintingDetails
