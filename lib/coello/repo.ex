defmodule Coello.Repo do
  use Ecto.Repo,
    otp_app: :coello,
    adapter: Ecto.Adapters.Postgres
end
