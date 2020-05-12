import React from 'react'

import './Painting.css'

const Painting = props => {
  const handleClick = () => props.selectPainting(props.painting)

  return (
    <div onClick={handleClick} className='painting'>
      <h3 className='painting-title'>{props.painting.title}</h3>
      <p className='painting-author'>{props.painting.artist.name}</p>
      <img alt='' src={props.painting.image} />
    </div>
  )
}

export default Painting
