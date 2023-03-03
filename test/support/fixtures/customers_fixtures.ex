defmodule Petstoremanager.CustomersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Petstoremanager.Customers` context.
  """

  @doc """
  Generate a pet.
  """
  def pet_fixture(attrs \\ %{}) do
    {:ok, pet} =
      attrs
      |> Enum.into(%{
        age: 120.5,
        breed: "some breed",
        name: "some name",
        owner: "some owner"
      })
      |> Petstoremanager.Customers.create_pet()

    pet
  end
end
