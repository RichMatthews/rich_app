defmodule RichApp.Repo.Countries do
  alias RichApp.Repo
  alias RichApp.Repo.Countries.Country

  def list_countries do
    Repo.all(Country)
  end

  def get_country_by_id(id) do
    Repo.get_by!(Country, id: id)
  end
end
