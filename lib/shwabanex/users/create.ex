defmodule Shwabanex.User.Create do
  alias Shwabanex.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
