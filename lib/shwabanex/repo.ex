defmodule Shwabanex.Repo do
  # O Ecto está se comunicando com o Adapter do Postgres para realizar a conexão
  use Ecto.Repo,
    otp_app: :shwabanex,
    adapter: Ecto.Adapters.Postgres
end
