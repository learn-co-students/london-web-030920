import React, { Component } from "react";
import StockContainer from "./StocksContainer";
import PortfolioContainer from "./PortfolioContainer";
import SearchBar from "../components/SearchBar";

class MainContainer extends Component {
  constructor(props) {
    super(props);
    this.state = { stocks: [], filter: "All" };
    this.fetchStocksAndUpdateState();
  }

  // THIS RETURNS A PROMISE !!!
  fetchAllStocks = () => {
    return fetch("http://localhost:3001/stocks").then((stocksArray) =>
      stocksArray.json()
    );
  };

  fetchStocksAndUpdateState = () => {
    this.fetchAllStocks().then((stocksArray) => {
      const stocksArrayWithPurchasedKey = this.addPurchasedKeyToStocks(
        stocksArray
      );
      this.setState({
        stocks: stocksArrayWithPurchasedKey,
      });
    });
  };

  addPurchasedKeyToStocks = (stocksArray) => {
    return stocksArray.map((stock) => {
      stock.purchased = false;
      return stock;
    });
  };

  filterStocksByType = () => {
    const filterType = this.state.filter;
    return this.state.stocks.filter((stock) => {
      if (filterType === "All") return true;
      return stock.type === this.state.filter;
    });
  };

  portfolioStocks = () => {
    return this.filterStocksByType().filter(
      (stock) => stock.purchased === true
    );
  };

  availableToPurchaseStocks = () => {
    return this.filterStocksByType().filter(
      (stock) => stock.purchased === false
    );
  };

  handleFilterChoice = (event) => {
    const filter = event.target.value;
    this.setState({ filter });
  };

  handleStockPurchase = (id) => {
    const stockBeingPurchased = this.state.stocks.find(
      (stock) => stock.id === id
    );

    const stockCopy = { ...stockBeingPurchased };

    stockCopy.purchased = !stockBeingPurchased.purchased;

    const stocksArray = this.state.stocks.map((stock) => {
      if (stock.id !== stockCopy.id) {
        return stock;
      } else {
        return stockCopy;
      }
    });

    this.setState({
      stocks: stocksArray,
    });
  };

  render() {
    return (
      <div>
        <SearchBar handleFilterChoice={this.handleFilterChoice} />

        <div className="row">
          <div className="col-8">
            <StockContainer
              handleStockPurchase={this.handleStockPurchase}
              stocks={this.availableToPurchaseStocks()}
            />
          </div>
          <div className="col-4">
            <PortfolioContainer
              handleStockPurchase={this.handleStockPurchase}
              stocks={this.portfolioStocks()}
            />
          </div>
        </div>
      </div>
    );
  }
}

export default MainContainer;
