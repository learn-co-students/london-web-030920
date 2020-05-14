import React from "react";
import NotesContainer from "./NotesContainer";

class App extends React.Component {
  constructor() {
    super();
    this.state = {
      notes: ["hello world", "hello dan"],
      title: "Notes list",
    };
    console.log(this.__proto__.constructor.name, "🍅 consturctor");
  }

  // fetch data that the app needs here:
  componentDidMount() {
    fetch("http://localhost:3001/notes")
      .then((data) => data.json())
      .then((notes) => {
        this.setState({ notes: notes, title: "TITLE AFTER FETCH" });
      });
    console.log(this.__proto__.constructor.name, "🍅 component did mount");
  }

  render() {
    console.log(this.__proto__.constructor.name, "🍅 render");
    return (
      <div>
        <h1>Notes APP: 📝</h1>
        <NotesContainer title={this.state.title} notes={this.state.notes} />
      </div>
    );
  }
}

export default App;
