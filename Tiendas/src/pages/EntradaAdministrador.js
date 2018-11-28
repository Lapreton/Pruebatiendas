import React, {Component} from 'react';

import tienda1 from  '../components/assets/tienda1.jpg';
import tienda2 from  '../components/assets/tienda2.jpg';
import tienda3 from  '../components/assets/tienda3.jpg';

class EntradaAdministrador extends Component {
  render() {
    return(

      <main role="main" className="container-fluid gradiente-fluid ">
        <div className="container gradiente shadow-lg bg-light">

          <div className="row">

            <h1 className="py-5 mx-auto">Administración de tiendas</h1>
            <div className="col-10 mx-auto">
              <hr/>
              <div className="lead pb-5 container">
                  <div className="row tiendasperfil my-5">
                    <div className="tienda col-sd-11 col-md-3 col-lg-3 py-1 mx-auto">
                        <h4>Ara</h4>
                        <img className="imgtienda" src={tienda1}/>
                    </div>

                    <div className="tienda col-sd-11 col-md-3 col-lg-3 py-1 mx-auto">
                        <h4>Waldo's</h4>
                        <img className="imgtienda" src={tienda2}/>
                    </div>

                    <div className="tienda col-sd-11 col-md-3 col-lg-3 py-1 mx-auto">
                        <h4>Zara</h4>
                        <img className="imgtienda" src={tienda3}/>
                    </div>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </main>
    );
  }
}

export default EntradaAdministrador;
