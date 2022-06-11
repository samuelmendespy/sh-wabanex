defmodule ShwabanexWeb.Resolvers.Training do
  def create(%{input: params}, _context), do: Shwabanex.Trainings.Create.call(params)
end
