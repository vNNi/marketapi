defmodule MarketapiWeb.Router do
  use MarketapiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MarketapiWeb do
    pipe_through :api
  end
end
