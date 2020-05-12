import React from 'react'

class Test extends React.Component {
  state = {
    clicked: false
  }

  handleClick = () => {
    this.setState({ clicked: true })
  }

  render () {
    return (
      <h1 onClick={this.handleClick}>{this.state.clicked ? 'Bye!' : 'Hi!'}</h1>
    )
  }
}

export default Test
