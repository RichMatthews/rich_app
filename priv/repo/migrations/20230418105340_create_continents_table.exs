defmodule RichApp.Repo.Migrations.CreateContinentsTable do
  use Ecto.Migration

  def change do
    create table(:continents) do
      add :name, :string
    end
  end
end
