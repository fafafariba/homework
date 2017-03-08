import React from 'react';
import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {searchTerm:""};
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange() {
    return (e) => this.setState({ searchTerm: e.currentTarget.value });
  }

  handleSubmit() {
    event.preventDefault();
    this.props.fetchSearchGiphys(this.state.searchTerm);
    this.setState({ searchTerm: "" });
  }

  render () {
    console.log(this.props, "from search");
    return (
      <div>
        <h1>SEARCH ME</h1>
        <section>
          <input onChange={this.handleChange()} value={this.state.searchTerm} />
          <button onClick={this.handleSubmit}>Search</button>
          <br/>
          <GiphysIndex giphys={this.props.giphys}/>
        </section>
      </div>
    );
  }
}

export default GiphysSearch;
