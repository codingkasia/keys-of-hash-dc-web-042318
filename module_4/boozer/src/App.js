import React, { Component } from 'react';

import './App.css';
import Search from './components/Search'
import CoctailList from './components/CoctailList'
import CoctailDetailView from './components/CoctailDetailView'
import AddNewCoctail from './components/AddNewCoctail'
const url = "http://localhost:3000/api/v1/cocktails";


class App extends Component {
  constructor() {
    super();
    this.state = { searchTerm: "", coctails: [], name: "", selected: "female" };
  }

  componentDidMount() {
    this.fetchCoctailsList();
  }

  fetchCoctailsList = () => {
    fetch(url)
      .then(resp => resp.json())
      .then(result => this.setState({ coctails: result }));
  };
  updateSearchInput = newSearch => {
    this.setState({ searchTerm: newSearch });
  };

  filterResults = () => {
    return this.state.coctails.filter(coctail =>
      coctail.name.toLowerCase().includes(this.state.searchTerm.toLowerCase())
    );
  };

  handleInputChange = event => {
    const target = event.target;
    const value = target.type === "radio" ? target.checked : target.value;
    // const name = target.name;
    this.setState(
      // [name]: value
      { selected: value, name: value }
    );
    // this.setState({name: newValue})
  };

  render() {
    return (
      <div className="App">
        <AddNewCoctail
          handleInputChange={this.handleInputChange}
          currentName={this.state.name}
          fValue={this.state.selected === "female"}
          mValue={this.state.selected === "male"}
        />
        <Search updateSearchInput={this.updateSearchInput} />
        <CoctailList showAllCoctails={this.filterResults()} />
        <CoctailDetailView />
      </div>
    );
  }
}

export default App;
