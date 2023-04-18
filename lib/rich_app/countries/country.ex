defmodule RichApp.Repo.Countries.Country do
  use Ecto.Schema

  schema "countries" do
    field(:name, :string)
    field(:population, :string)
  end

  def changeset(country, params \\ %{}) do
    country
    |> Ecto.Changeset.cast(params, [:name])
  end
end
