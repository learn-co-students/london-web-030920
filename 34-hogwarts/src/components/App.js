import React, { Component } from "react";
import "../App.css";
import HogsContainer from "./HogsContainer";
import Nav from "./Nav";
import hogsData from "../porkers_data";

class App extends Component {
  render() {
    return (
      <div className="App">
        <Nav />
        <HogsContainer hogs={hogsData} />
      </div>
    );
  }
}

export default App;
