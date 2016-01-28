defmodule Tikt.OrganizationTest do
  use Tikt.ModelCase

  alias Tikt.Organization

  @valid_attrs %{active: true, description: "some content", image_url: "some content", name: "some content", url: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Organization.changeset(%Organization{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Organization.changeset(%Organization{}, @invalid_attrs)
    refute changeset.valid?
  end
end
