import React from "react";

const Stock = ({ stock: { name, ticker, price, id }, handleStockPurchase }) => (
  <div onClick={() => handleStockPurchase(id)}>
    <div className="card">
      <div className="card-body">
        <h5 className="card-title">{`${name}`}</h5>
        <p className="card-text">{`${ticker}: ${price}`}</p>
      </div>
    </div>
  </div>
);

export default Stock;
