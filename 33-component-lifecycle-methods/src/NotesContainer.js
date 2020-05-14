import React from "react";
import Note from "./Note";

class NoteContainer extends React.Component {
  constructor() {
    super();
    this.state = {};
    console.log(this.__proto__.constructor.name, "🥝 consturctor");
  }

  componentDidMount() {
    console.log(this.__proto__.constructor.name, "🥝 component did mount");
  }

  componentDidUpdate() {
    console.log(this.__proto__.constructor.name, "🥝 component did update");
  }

  render() {
    console.log(this.__proto__.constructor.name, "🥝 render");
    return (
      <div>
        <h2>{this.props.title}</h2>
        <ul>
          {this.props.notes.map((note) => {
            return <Note text={note} key={note} />;
          })}
        </ul>
      </div>
    );
  }
}

export default NoteContainer;
