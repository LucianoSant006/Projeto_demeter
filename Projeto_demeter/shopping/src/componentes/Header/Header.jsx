import React from 'react';
import SearchBar from '../SearchBar/SearchBar';
import '../Feader.css';
import CartButton from '../CartButton/CartButton';
import '../CartButton.css';

function Header() {
return (/*<header className='header' style={{background:'red'}}>
    <div className="container" /*style={{maxWidth: "800px", margin:"0 auto"}}>
    <SearchBar/>
  <button>cart</button>

    </div>

</header>
*/

<header className="header">
     <div className="container">
        <div className="header-main">
        
           <div className="logo">
              <a href="#"></a>
              <img src="img/logosagrada-removebg-preview.png" alt="" class="logo-demeter" />
           </div>
           <SearchBar/>
           <div className="open-nav-menu">
              <span></span>
           </div>
           <div className="menu-overlay">
           </div>
          
           <nav className="nav-menu">
             <div className="close-nav-menu ">
             <img src="img/close.svg" alt="close"/>
             </div>
             <ul className="menu">
                <li className="menu-item menu-item-has-children">
                   <a href="#" data-toggle="sub-menu">Home <i class="plus"></i></a>
                   <ul class="sub-menu">
                       <li class="menu-item"><a href="#">Home 1</a></li>
                       <li class="menu-item"><a href="#">Home 2</a></li>
                       <li class="menu-item"><a href="#">Home 3</a></li>
                       <li class="menu-item"><a href="#">Home 4</a></li>
                   </ul>
                </li>
                <li className="menu-item">
                   <a href="#">About</a>
                </li>
                <li className="menu-item">
                   <a href="#">Services</a>
                </li>
                <li className="menu-item menu-item-has-children">
                   <a href="#" data-toggle="sub-menu">Pages <i class="plus"></i></a>
                   <ul class="sub-menu">
                       <li class="menu-item"><a href="#">page 1</a></li>
                       <li class="menu-item"><a href="#">page 2</a></li>
                       <li class="menu-item"><a href="#">page 3</a></li>
                       <li class="menu-item"><a href="#">page 4</a></li>
                   </ul>
                </li>
                <li className="menu-item">
                   <a href="#">News</a>
                </li>
                <li className="menu-item">
                   <a href="#">Contact</a>
                </li>
             </ul>
             <CartButton/>
         
           </nav>
           </div>
           </div>
           </header>
);
}
export default Header;