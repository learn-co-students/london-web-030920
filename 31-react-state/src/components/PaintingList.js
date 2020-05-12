import React from 'react'

import Painting from './Painting'

import './PaintingList.css'
import paintings from '../data/paintings'

const PaintingList = props => {
  const filteredPaintings = paintings.filter(painting =>
    painting.title.toLowerCase().includes(props.searchTerm.toLowerCase())
  )

  return (
    <div className='painting-list'>
      {filteredPaintings.map(painting => (
        <Painting painting={painting} selectPainting={props.selectPainting} />
      ))}
    </div>
  )
}

export default PaintingList
