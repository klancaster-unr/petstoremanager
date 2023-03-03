# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Petstoremanager.Repo.insert!(%Petstoremanager.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Petstoremanager.Repo
alias Petstoremanager.Customers.Pet

1..50 |> Enum.each(fn x ->
  %Pet{
    name: Faker.Dog.PtBr.name,
    breed: Faker.Dog.PtBr.breed,
    owner: Faker.Person.last_name,
    age: :rand.uniform(10) * 1.0,
    species: "canine"
  }
  |> Repo.insert
end)

1..50 |> Enum.each(fn x ->
  %Pet{
    name: Faker.Cat.name,
    breed: Faker.Cat.breed,
    owner: Faker.Person.last_name,
    age: :rand.uniform(10) * 1.0,
    species: "feline"
  }
  |> Repo.insert

end)
