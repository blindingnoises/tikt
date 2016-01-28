defmodule Tikt.Repo.Migrations.CreateOrganization do
  use Ecto.Migration

  def change do
    create table(:organizations) do
      add :name, :string
      add :description, :string
      add :url, :string
      add :image_url, :string
      add :active, :boolean, default: false

      timestamps
    end

  end
end
