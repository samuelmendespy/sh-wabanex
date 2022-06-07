defmodule ShwabanexWeb.Resolvers.User do
  def create(%{input: params}, _context), do:
Shwabanex.Users.Create.call(params)
  def get(%{id: user_id}, _context), do: Shwabanex.Users.Get.call(user_id)
end
