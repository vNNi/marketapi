defmodule Marketapi.ProductsTest do
  use Marketapi.DataCase

  alias Marketapi.Products

  describe "itens" do
    alias Marketapi.Products.Item

    @valid_attrs %{buyed: true, name: "some name", quantity: 42}
    @update_attrs %{buyed: false, name: "some updated name", quantity: 43}
    @invalid_attrs %{buyed: nil, name: nil, quantity: nil}

    def item_fixture(attrs \\ %{}) do
      {:ok, item} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Products.create_item()

      item
    end

    test "list_itens/0 returns all itens" do
      item = item_fixture()
      assert Products.list_itens() == [item]
    end

    test "get_item!/1 returns the item with given id" do
      item = item_fixture()
      assert Products.get_item!(item.id) == item
    end

    test "create_item/1 with valid data creates a item" do
      assert {:ok, %Item{} = item} = Products.create_item(@valid_attrs)
      assert item.buyed == true
      assert item.name == "some name"
      assert item.quantity == 42
    end

    test "create_item/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Products.create_item(@invalid_attrs)
    end

    test "update_item/2 with valid data updates the item" do
      item = item_fixture()
      assert {:ok, %Item{} = item} = Products.update_item(item, @update_attrs)
      assert item.buyed == false
      assert item.name == "some updated name"
      assert item.quantity == 43
    end

    test "update_item/2 with invalid data returns error changeset" do
      item = item_fixture()
      assert {:error, %Ecto.Changeset{}} = Products.update_item(item, @invalid_attrs)
      assert item == Products.get_item!(item.id)
    end

    test "delete_item/1 deletes the item" do
      item = item_fixture()
      assert {:ok, %Item{}} = Products.delete_item(item)
      assert_raise Ecto.NoResultsError, fn -> Products.get_item!(item.id) end
    end

    test "change_item/1 returns a item changeset" do
      item = item_fixture()
      assert %Ecto.Changeset{} = Products.change_item(item)
    end
  end
end
