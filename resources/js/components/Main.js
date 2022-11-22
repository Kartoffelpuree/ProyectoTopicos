import React from 'react';
import  ReactDOM  from 'react-dom';
import {
    BrowserRouter as Router,
    Switch,
    Route
} from "react-router-dom";

import Navigation from './Nav';
import LoginForm from './LoginForm';
import Home from './Home';
import Productos from './Productos';
import ShowProductosAdmin from './ProductosAdmin';
import UpdateProducto from './UpdateProducto';
import RegistraProducto from './RegistraProducto';
import DeleteProduct from './DeleteProduct';
import RegistraUsuario from './RegistraUsuario';
import ForgotPassword from './ForgotPassword';
import Acerca from './Acerca';
function Main() {
    return (
        <Router>
            <Navigation/>
            <main>
                <Switch>
                 <Route path="/cyberdoor/public/" exact component={Home}/>
                 <Route path="/cyberdoor/public/LoginForm"  exact component={LoginForm}/>
                 <Route path="/cyberdoor/public/Productos"  exact component={Productos}/>
                 <Route path="/cyberdoor/public/UpdateProducto"  exact component={UpdateProducto}/>
                 <Route path="/cyberdoor/public/ProductosAdmin"  exact component={ShowProductosAdmin}/>
                 <Route path="/cyberdoor/public/RegistraProducto"  exact component={RegistraProducto}/>
                 <Route path="/cyberdoor/public/DeleteProduct"  exact component={DeleteProduct}/>
                 <Route path="/cyberdoor/public/RegistraUsuario"  exact component={RegistraUsuario}/>
                 <Route path="/cyberdoor/public/ForgotPassword"  exact component={ForgotPassword}/>
                 <Route path="/cyberdoor/public/Acerca"  exact component={Acerca}/>
                </Switch>
            </main>
    </Router>
    );
}

export default Main;
if (document.getElementById('example')) {
    ReactDOM.render(<Main/>, document.getElementById('example'));
}