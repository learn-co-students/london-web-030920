import React from "react";

class Note extends React.Component {
  constructor() {
    super();
    this.state = {};
    console.log(this.__proto__.constructor.name, "🌎 consturctor");
  }

  componentDidMount() {
    console.log(
      this.__proto__.constructor.name,
      `${this.props.text}🌎 component did mount`
    );
  }

  componentWillUnmount() {
    console.log(
      this.__proto__.constructor.name,
      `${this.props.text}🌎 component did unmount`
    );
  }

  render() {
    console.log(this.__proto__.constructor.name, "🌎 render");
    return <li>{this.props.text}</li>;
  }
}

export default Note;
