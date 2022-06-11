defmodule Shwabanex.Trainings.Create do
  alias Shwabanex.{Repo, Training}

  def call(params) do
    params
    |> Training.changeset()
    |> Repo.insert()
  end
end
