defmodule Marketapi.Products.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "itens" do
    field :buyed, :boolean, default: false
    field :name, :string
    field :quantity, :integer

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:name, :quantity, :buyed])
    |> validate_required([:name, :quantity, :buyed])
  end
end
