defmodule RestApi.User do
  use RestApi.Web, :model

  schema "users" do
    field :fullname, :string
    field :email, :string
    field :age, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:fullname, :email, :age])
    |> validate_required([:fullname, :email, :age])
  end
end
