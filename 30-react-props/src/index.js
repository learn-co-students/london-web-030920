import React from 'react'
import ReactDOM from 'react-dom'

import App from './App'

// const Greeting = props => {
//   return (
//     <h1>
//       Hello, {props.name}! {props.hungry ? 'You want an apple?' : ''}
//     </h1>
//   )
// }

// <div>
// <Greeting name='Ben' hungry={true} />
// <Greeting name='Isak' />
// <Greeting name='Premti' />
// <Greeting name='George' hungry={true} />
// </div>,

ReactDOM.render(
  // what to render
  <App />,
  // React.createElement('h1', null, 'Hello'),
  // where to put it
  document.getElementById('root')
)
