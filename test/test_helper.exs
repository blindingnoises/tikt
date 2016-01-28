ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Tikt.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Tikt.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Tikt.Repo)

