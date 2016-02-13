defmodule Tikt.Person do
  use Tikt.Web, :model

  schema "people" do
    field :name, :string
    field :nickname, :string
    field :email, :string
    field :password_hash, :string
    field :password_salt, :string
    field :description, :string
    field :image_url, :string
    field :role, :integer
    field :active, :boolean, default: false
    belongs_to :organization, Tikt.Organization

    timestamps
  end

  @required_fields ~w(name nickname email password_hash password_salt description image_url role active)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
