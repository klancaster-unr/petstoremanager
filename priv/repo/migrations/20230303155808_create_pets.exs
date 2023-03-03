defmodule Petstoremanager.Repo.Migrations.CreatePets do
  use Ecto.Migration

  def change do
    create table(:pets) do
      add :name, :string
      add :breed, :string
      add :owner, :string
      add :age, :float
      add :species, :string
      timestamps()
    end
  end
end
