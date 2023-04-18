defmodule RichApp.Repo.Continent do
  use Ecto.Schema

  schema "continents" do
    field(:name, Ecto.Enum,
      values: [:north_america, :south_america, :europe, :asia, :africa, :antartica, :oceania]
    )

    # has_many(:countries, Country)
  end

  def changeset(country, params \\ %{}) do
    country
    |> Ecto.Changeset.cast(params, [:name])
  end
end
