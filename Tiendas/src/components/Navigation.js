import React, { Component } from 'react';
import {NavLink} from 'react-router-dom';
import Tienda from '../icon/Tienda.png';

class Navigation extends Component {
  render() {
    return(
      <nav className="navbar navbar-expand-lg navegacion bg-dark sticky-top ">


        <NavLink className="navbar-brand" to="/">
          <img src={Tienda} className="App-logo mt-auto" alt="logo"/>
          <span className="mx-auto">Tiendas Online</span>
        </NavLink>

        <button className="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#Navbarboton" aria-controls="Navbarboton" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon"></span>
        </button>

        <div className="collapse navbar-collapse" id="Navbarboton">
          <div className="navbar-nav ml-auto">
            <NavLink className="nav-link" to="/EntradaCliente">Entrada Cliente</NavLink>
            <NavLink className="nav-link" to="/EntradaAdministrador">Entrada Administrador</NavLink>
          </div>
        </div>
      </nav>
    );
  }
}

export default Navigation;
