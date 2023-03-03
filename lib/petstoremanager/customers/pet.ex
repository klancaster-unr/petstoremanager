defmodule Petstoremanager.Customers.Pet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pets" do
    field :age, :float
    field :breed, :string
    field :name, :string
    field :owner, :string
    field :species, :string
    timestamps()
  end

  @doc false
  def changeset(pet, attrs) do
    pet
    |> cast(attrs, [:name, :breed, :owner, :age, :species])
    |> validate_required([:name, :owner, :age, :species])
    |> validate_length(:name, min: 5, max: 20)
  end
end
