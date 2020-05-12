import React from 'react'
import ReactDOM from 'react-dom'

import App from './App'

ReactDOM.render(
  // what to render
  <App />,
  // <App /> is translated to React.createElement('h1', null, 'Hello')
  // by Babel before hitting the browser

  // where to put it
  document.getElementById('root')
)
