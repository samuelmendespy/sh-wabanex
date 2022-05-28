defmodule Shwabanex.Repo do
  use Ecto.Repo,
    otp_app: :shwabanex,
    adapter: Ecto.Adapters.Postgres
end
# O Ecto está se comunicando com o Adapter do Postgres para realizar a conexão
