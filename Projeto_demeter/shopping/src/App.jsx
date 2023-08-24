import React from "react";
import Header from "./componentes/Header/Header";
import SearchBar from "./componentes/SearchBar/SearchBar";
import CartButton from "./componentes/CartButton/CartButton";
import ApiComponent from "./Api/ApiComponent";





function App() {
  return (
    <div>
   <ApiComponent/>
      <Header />
      <SearchBar/>
      <CartButton/>
      
    </div>
  );
}

export default App;
