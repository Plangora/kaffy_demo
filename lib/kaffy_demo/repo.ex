defmodule KaffyDemo.Repo do
  use Ecto.Repo,
    otp_app: :kaffy_demo,
    adapter: Ecto.Adapters.Postgres
end
