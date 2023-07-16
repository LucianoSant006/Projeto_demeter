import React from 'react';
import { BsSearch} from 'react-icons/bs';

function SearchBar(){
    return( 
        <form>
            <input type="searc" placeholder='Pesquisa' className="search__input"
            required
            
    />
    <button type="submit" className='search__button

    '>
         <BsSearch/>

    </button>

        </form>
    );
}

export default SearchBar;