import React from "react";
import HogTile from "./HogTile";

class HogsContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      hogs: this.props.hogs,
      sortBy: "weight",
      filterGreased: true,
    };
  }

  toggleSortingAlgorithm = () => {
    const current = this.state.sortBy;
    const possible = ["name", "weight"];
    this.setState({
      sortBy: possible.filter((sA) => sA !== current)[0],
    });
  };

  toggleDetail = (clickedHog) => {
    const hogsArray = this.state.hogs.filter(
      (hog) => hog.name !== clickedHog.name
    );
    clickedHog.detailView = !clickedHog.detailView;
    this.setState({
      hogs: [...hogsArray, clickedHog],
    });
  };

  toggleFilterGreased = () => {
    this.setState({
      filterGreased: !this.state.filterGreased,
    });
  };

  filterGreasedHogs = () => {
    if (this.state.filterGreased === true) {
      return this.state.hogs.filter((hog) => {
        return hog.greased;
      });
    } else {
      return this.state.hogs;
    }
  };

  sortHogs = (hogs) => {
    return hogs.sort((hogA, hogB) => {
      const comparableA = hogA[this.state.sortBy];
      const comparableB = hogB[this.state.sortBy];

      if (comparableA > comparableB) {
        return 1;
      } else if (comparableA < comparableB) {
        return -1;
      }
      return 0;
    });
  };

  render() {
    return (
      <div>
        <button onClick={this.toggleSortingAlgorithm}>
          toggle sorting algo
        </button>
        <button onClick={this.toggleFilterGreased}>filter greased</button>
        {this.sortHogs(this.filterGreasedHogs()).map((hog) => {
          return (
            <HogTile
              toggle={() => this.toggleDetail(hog)}
              key={hog.name}
              hog={hog}
            />
          );
        })}
      </div>
    );
  }
}

export default HogsContainer;
