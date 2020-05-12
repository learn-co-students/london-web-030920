import React from 'react'

const SearchBar = props => {
  return (
    <input
      onChange={props.updateSearchTerm}
      placeholder='search for a painting...'
    />
  )
}

export default SearchBar
