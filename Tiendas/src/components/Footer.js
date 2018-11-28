import React, { Component} from 'react';
import facebook from '../icon/facebook.svg';
import twitter from '../icon/twitter.svg';
import gmail from '../icon/gmail.svg';
import phone from '../icon/phone.svg';
import map from '../icon/map.svg';
import Tienda from '../icon/Tienda.png';

class Footer extends Component {
  render() {
    return(

      <footer className="footer ">

        <div className="container-fluid py-3">
          <div className="row vdivide">

            <div className="col-6  col-sm-6 col-md-6 col-lg-6">
              <div className="pb-3 text-center"><h3>Acerca de nosotros</h3></div>
              <p>
                <i>Somos una compañia la cual provee el servicio de registro y administración de tiendas, tambien se ofrece el servicio tanto de inventario como registro de ventas realizadas.</i>
              </p>
            </div>

            <div className="col-6 col-sm-6 col-md-6 col-lg-6 ">

              <div className="text-left">
                <p className="pt-2"><img className="iconfooter" src={map}/> CALLE 01 # 02 C - 04</p>
                <p className="pt-2"><img className="iconfooter" src={phone}/> Teléfono: +57 300 666 7777</p>
                <p className="pt-2"><img className="iconfooter" src={gmail}/> Email: <a href="mailto:Tiendasonline@mail.com">Tiendasonline@mail.com</a></p>
                <p className="pt-2">Siguenos en: <img className="iconfooter" src={facebook}/> <img className="iconfooter" src={twitter}/></p> 
              </div>
            </div>
          </div>
        </div>

      </footer>
    );
  }
}

export default Footer;
