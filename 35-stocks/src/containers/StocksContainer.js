import React, { Component } from "react";
import Stock from "../components/Stock";

class StocksContainer extends Component {
  render() {
    return (
      <div>
        <h2>Stocks</h2>
        {this.props.stocks.map((stock) => {
          return (
            <Stock
              key={stock.ticker}
              handleStockPurchase={this.props.handleStockPurchase}
              stock={stock}
            />
          );
        })}
      </div>
    );
  }
}

export default StocksContainer;
