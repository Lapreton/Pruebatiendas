import React, {Component} from 'react';

import img404 from '../components/assets/404.jpg';

class Error extends Component {
  render() {
    return(

      <main role="main" className="container-fluid gradiente-fluid ">
        <div className="container gradiente shadow-lg bg-light">

          <div className="row">

              <h3 className="mx-auto py-5">ERROR 404! Pagina no Encontrada</h3>
            <div className="col-10 mx-auto">
              <hr/>
              Por favor verifique la direccion de la pagina web antes de acceder.
              <div className="lead pb-5 container">
                <img className="img-responsive" src={img404} />
              </div>
            </div>
          </div>
        </div>
      </main>

    );
  }
}

export default Error;
