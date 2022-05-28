defmodule Shwabanex.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:g_users) do
      add :email, :string
      add :name, :string
      add :password, :string

      timestamps()
    end

    create unique_index(:g_users, [:email])

  end
end
# A tabela g_users recebeu esse nome porque um conflito no postgres impedia criar uma tabela users
