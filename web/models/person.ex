defmodule Tikt.Person do
  use Tikt.Web, :model
  import Comeonin.Bcrypt, only: [hashpwsalt: 1]
  
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
    
    # UI Virtual fields
    field :password, :string, virtual: true
    field :password_confirm, :string, virtual: true
  end

  @required_fields ~w(name nickname email password password_confirm description image_url role active)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> hash_password
  end
  
  defp hash_password(changeset) do
  if password = get_change(changeset, :password) do
    changeset
    |> put_change(:password_hash, hashpwsalt(password))
    |> put_change(:password_salt, "RANDOMSALTVALUE")
  else
    changeset
  end
end
end
