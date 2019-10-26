defmodule MarketapiWeb.ItemView do
  use MarketapiWeb, :view
  alias MarketapiWeb.ItemView

  def render("index.json", %{itens: itens}) do
    %{data: render_many(itens, ItemView, "item.json")}
  end

  def render("show.json", %{item: item}) do
    %{data: render_one(item, ItemView, "item.json")}
  end

  def render("item.json", %{item: item}) do
    %{id: item.id,
      name: item.name,
      quantity: item.quantity,
      buyed: item.buyed}
  end
end
