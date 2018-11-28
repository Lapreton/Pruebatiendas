import React, { Component } from 'react';
import './style/App.css';
import {BrowserRouter, Route, Switch} from 'react-router-dom';
//components
import Header from './components/Header.js';
import Navigation from './components/Navigation.js';
import Footer from './components/Footer.js';
//pages
import Inicial from './components/Inicial.js';
import EntradaCliente from './pages/EntradaCliente.js';
import EntradaAdministrador from './pages/EntradaAdministrador.js';
import Error from './pages/Error.js';

class App extends Component {
  render() {
    return (
      <BrowserRouter>
        <div className="App">
          <Header/>
          <Navigation/>
          <Switch>
              <Route path="/" component={Inicial} exact />
              <Route path="/EntradaCliente" component={EntradaCliente} />
              <Route path="/EntradaAdministrador" component={EntradaAdministrador} />
              <Route component={Error} />
          </Switch>
          <Footer/>
        </div>
      </BrowserRouter>
    );
  }
}

export default App;
