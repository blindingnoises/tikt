defmodule Tikt.Repo.Migrations.CreateActivity do
  use Ecto.Migration

  def change do
    create table(:activities) do
      add :name, :string
      add :description, :string
      add :active, :boolean, default: false

      timestamps
    end

  end
end
