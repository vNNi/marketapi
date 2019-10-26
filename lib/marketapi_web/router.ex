defmodule MarketapiWeb.Router do
  use MarketapiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MarketapiWeb do
    pipe_through :api
  end

  pipeline :browser do
    plug :accepts, ["html"]
  end

  scope "/", MarketapiWeb do
    pipe_through :browser
    get "/", DefaultController, :index
  end
end
