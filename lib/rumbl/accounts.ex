defmodule Rumbl.Accounts do
  alias Rumbl.Repo
  alias Rumbl.Accounts.User

  def list_users do
    # [
    #   %User{id: "1", name: "simon", username: "simonangatia"},
    #   %User{id: "2", name: "eric", username: "ericochieng"},
    #   %User{id: "3", name: "moses", username: "mose"},
    #   %User{id: "4", name: "christine", username: "chris"},
    #   %User{id: "5", name: "edward", username: "edwards"}
    # ]
    Repo.all(User)
  end
  def get_user(id) do
    # Enum.find(list_users(), fn user -> user.id == id end)
    Repo.get!(User, id)
  end
  def get_user!(id) do
    Repo.get!(User, id)
  end

  def get_user_by(params) do
    # Enum.find(list_users(), fn user ->
    #   Enum.all?(params, fn {key, value} -> Map.get(user, key) == value end)
    # end)
    Repo.get_by(User, params)
  end
  def change_user(%User{} = user) do
    # %User{}
    User.changeset(user, %{})
  end
  def create_user(attrs \\%{}) do
    # %User{}
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

end
