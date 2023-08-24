import React from 'react';

const getProduct = () => {
  // Código para obter o produto "rosquinha" do container
  const container = document.querySelector('.container');
  const rosquinha = container.querySelector('.rosquinha img').getAttribute('src');

  return rosquinha;
};

const ApiComponent = () => {
  const product = getProduct();

  return (
    <div>
      <h1>Produto Rosquinha:</h1>
      <img src={product} alt="Produto Rosquinha" />
    </div>
  );
};

export default ApiComponent;