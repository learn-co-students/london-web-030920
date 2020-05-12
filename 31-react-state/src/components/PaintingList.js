import React from 'react'

import Painting from './Painting'

import './PaintingList.css'
import paintings from '../data/paintings'

const PaintingList = props => {
  return (
    <div className='painting-list'>
      {paintings.map(painting => (
        <Painting painting={painting} selectPainting={props.selectPainting} />
      ))}
    </div>
  )
}

export default PaintingList
