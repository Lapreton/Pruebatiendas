import React, {Component} from 'react';
import Banner from './assets/TIendaBanner.png';

class Header extends Component {
  render() {
    return(
      <header>
        <img className="img-responsive standard-logo col-lg-12" src={Banner}></img>
      </header>
    );
  }
}

export default Header;
