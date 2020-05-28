import React from "react";
import "./App.css";

class App extends React.Component {
  state = {};

  loginGood = () => {
    const body = JSON.stringify({
      user: {
        username: "daniel",
        password: "cat",
      },
    });
    fetch("http://localhost:3001/api/v1/login", {
      method: "POST",
      body,
    })
      .then((data) => data.json())
      .then(console.log);
  };

  loginBad = () => {
    console.log("login bad");
  };

  logout = () => {
    console.log("logout");
  };

  getAllUserData = () => {
    fetch("http://localhost:3001/api/v1/users", {
      headers: {
        Authorization: `Bearer ${localStorage.getItem("token")}`,
      },
    })
      .then((data) => data.json())
      .then(console.log);
  };

  render = () => {
    return (
      <div>
        <button onClick={this.loginGood}>good login</button>
        <button onClick={this.loginBad}>bad login</button>
        <button onClick={this.logout}>logout</button>
        <button onClick={this.getAllUserData}>getAllUserData</button>
      </div>
    );
  };
}

export default App;
