defmodule RichAppWeb.Schema.Schema do
  alias RichApp.Repo.Countries
  use Absinthe.Schema

  query do
    @desc "Get a country by its id"
    field :name, :country do
      arg(:id, non_null(:string))

      resolve(fn _, %{id: id}, _ ->
        {:ok, Countries.get_country_by_id(id)}
      end)
    end
  end

  object :country do
    field(:name, non_null(:string))
    field(:population, non_null(:string))
  end
end

# doc = """
# query {
#   countries(id: 1){
#     name,
#     population
#   }
# }

# """
