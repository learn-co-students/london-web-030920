import React from "react";

class HogTile extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      hogImage: require(`../hog-imgs/${this.props.hog.name
        .toLowerCase()
        .replace(/ /g, "_")}.jpg`),
    };
  }
  render() {
    const hog = this.props.hog;

    return (
      <div onClick={this.props.toggle}>
        <h2>{hog.name}</h2>
        <h3>weight: {hog.weight.toString()}</h3>
        <p>greased?: {hog.greased.toString()}</p>

        {hog.detailView ? (
          <div>
            <p>specialty: {hog.specialty}</p>
            <p>highest medal achieved: {hog.highestMedalAchieved}</p>
          </div>
        ) : null}
        <img src={this.state.hogImage} alt={"a hog"}></img>
      </div>
    );
  }
}

export default HogTile;
