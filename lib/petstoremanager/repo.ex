defmodule Petstoremanager.Repo do
  use Ecto.Repo,
    otp_app: :petstoremanager,
    adapter: Ecto.Adapters.Postgres
end
