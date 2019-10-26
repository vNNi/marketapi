defmodule MarketapiWeb.DefaultController do 
    use MarketapiWeb, :controller

    def index(conn, _params) do
        text conn, "MakertApi!"
    end
end