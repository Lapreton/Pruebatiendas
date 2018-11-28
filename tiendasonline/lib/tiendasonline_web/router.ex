defmodule TiendasonlineWeb.Router do
  use TiendasonlineWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TiendasonlineWeb do
    pipe_through :browser

    #servicios para tiendas
    post "/tienda/registrar/", Tiendacontroller, :registrartienda
    post "/tienda/borrar/", Tiendacontroller, :borrartienda


    #servicios para productos
    post "/producto/registrar/", Productocontroller, :registrarproducto
    post "/producto/borrar/", Productocontroller, :borrarproducto


    #servicios para compras
    post "/compras/comprar/", Comprascontroller, :comprarproducto


    #servicios para vista
    get "/page/tiendas/", Controller, :listartiendas
    get "/page/tiendas/:tienda", Controller, :listarproductos
  end

  # Other scopes may use custom stacks.
  # scope "/api", TiendasonlineWeb do
  #   pipe_through :api
  # end
end
