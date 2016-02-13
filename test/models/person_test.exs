defmodule Tikt.PersonTest do
  use Tikt.ModelCase

  alias Tikt.Person

  @valid_attrs %{active: true, description: "some content", email: "some content", image_url: "some content", name: "some content", nickname: "some content", password_hash: "some content", password_salt: "some content", role: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Person.changeset(%Person{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Person.changeset(%Person{}, @invalid_attrs)
    refute changeset.valid?
  end
end
