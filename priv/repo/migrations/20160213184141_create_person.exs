defmodule Tikt.Repo.Migrations.CreatePerson do
  use Ecto.Migration

  def change do
    create table(:people) do
      add :name, :string
      add :nickname, :string
      add :email, :string
      add :password_hash, :string
      add :password_salt, :string
      add :description, :string
      add :image_url, :string
      add :role, :integer
      add :active, :boolean, default: false
      add :organization_id, references(:organizations, on_delete: :nothing)

      timestamps
    end
    create index(:people, [:organization_id])

  end
end
