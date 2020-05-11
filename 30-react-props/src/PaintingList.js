import React from 'react'

import Painting from './Painting'

import paintings from './paintings'

const PaintingList = props => {
  return (
    <div>
      {paintings.map(painting => (
        <Painting painting={painting} />
      ))}
    </div>
  )
}

export default PaintingList
