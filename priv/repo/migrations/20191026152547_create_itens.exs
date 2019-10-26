defmodule Marketapi.Repo.Migrations.CreateItens do
  use Ecto.Migration

  def change do
    create table(:itens) do
      add :name, :string
      add :quantity, :integer
      add :buyed, :boolean, default: false, null: false

      timestamps()
    end

  end
end
