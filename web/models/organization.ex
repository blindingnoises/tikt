defmodule Tikt.Organization do
  use Tikt.Web, :model

  schema "organizations" do
    field :name, :string
    field :description, :string
    field :url, :string
    field :image_url, :string
    field :active, :boolean, default: false

    timestamps
  end

  @required_fields ~w(name description url image_url active)
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
