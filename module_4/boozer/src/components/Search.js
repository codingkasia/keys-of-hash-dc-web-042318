import React from 'react'

const Search = (props) => {
    return <div>
        <input type="text" onChange={e => props.updateSearchInput(e.target.value)} />
      </div>;

}
export default Search 
