defmodule RestApi.UserTest do
  use RestApi.ModelCase

  alias RestApi.User

  @valid_attrs %{age: 42, email: "some email", fullname: "some fullname"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
