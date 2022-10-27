defmodule Rumbl.Accounts do
  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "simon", username: "simonangatia"},
      %User{id: "2", name: "eric", username: "ericochieng"},
      %User{id: "3", name: "moses", username: "mose"},
      %User{id: "4", name: "christine", username: "chris"},
      %User{id: "5", name: "edward", username: "edwards"}
    ]
  end
  def get_user(id) do
    Enum.find(list_users(), fn user -> user.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn user ->
      Enum.all?(params, fn {key, value} -> Map.get(user, key) == value end)
    end)
  end
end
