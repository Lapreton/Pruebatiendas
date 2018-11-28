import React, { Component } from 'react';

import imagen1 from './assets/Imagen1.jpg';
import imagen2 from './assets/Imagen2.png';
import imagen3 from './assets/Imagen3.jpg';

import empresario from '../components/assets/empresario.png';
import factores from '../components/assets/factores.png';
import check from '../icon/Check.ico';
class Inicial extends Component {
  render() {
    return(
      <main role="main">
        <section>
          <div id="carouselExampleIndicators" className="carousel slide" data-ride="carousel">
            <ol className="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" className="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div className="carousel-inner img">
              <div className="carousel-item active">
                <img className="w-100" src={imagen1} alt="First slide"></img>
              </div>
              <div className="carousel-item">
                <img className="w-100" src={imagen2} alt="Second slide"></img>
              </div>
              <div className="carousel-item">
                <img className="w-100" src={imagen3} alt="Third slide"></img>
              </div>
              <a className="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span className="sr-only">Previous</span>
              </a>
              <a className="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span className="sr-only">Next</span>
              </a>
            </div>
          </div>
        </section>

        <section>
          <div className="mision row">

            <div className="col-sm-12 col-md-5 col-lg-5 mx-auto">
              <h1 className="py-5 mx-5 ">Tu marca a tu manera</h1>
              <p className="lead pb-5 ml-5  text-left">
              ¡No necesitas ser diseñador gráfico!

              Establece tu marca en línea con un dominio personalizado y una tienda online.
              Recibe acceso instantáneo a cientos de las más hermosas plantillas, y controla
              completamente el look y la imagen de tu marca. Finalmente podrás crear una tienda
              online propia que refleja tu personalidad y la de tu negocio.
              </p>
            </div>
            <div className="col-md-4 col-lg-4 my-auto d-none d-md-block mx-auto">
              <img className="img-fluid" src={empresario}/>
            </div>
          </div>
        </section>

        <hr/>

        <section>
          <div className="vision row">

            <div className="col-md-4 col-lg-4 my-auto d-none d-md-block">
              <img className="img-fluid mx-auto" src={factores}/>
            </div>

            <div className="col-sm-12 col-md-5 col-lg-5 mx-auto">

              <h1 className="py-5">Toma el control de tu negocio</h1>

              <div className="mr-5">

                <p className="lead pb-5  text-left">
                Vender tus productos en distintos lugares debería ser tan sencillo como venderlos en tu local comercial.
                Con Tiendas Online, cuentas con una plataforma para manejar tu negocio en internet con facilidad.
                </p>

                <hr/>
                <p className="lead text-left">Personaliza completamente tu tienda online <img className="checkico ml-auto" src={check}/></p>
                <hr/>
                <p className="lead text-left">Agrega nuevos canales de venta en segundos <img className="checkico ml-auto" src={check}/></p>
                <hr/>
                <p className="lead text-left">Maneja un número ilimitado de productos e inventario <img className="checkico ml-auto" src={check}/></p>
                <hr/>
                <p className="lead text-left">Surte tus pedidos en un simple paso <img className="checkico ml-auto" src={check}/></p>
                <hr/>
                <p className="lead text-left">Rastrea la tendencia de tus ventas y del crecimiento de tu negocio <img className="checkico ml-auto" src={check}/></p>
                <hr/>
              </div>
            </div>
          </div>
        </section>
      </main>
    );
  }
}

export default Inicial;
