defmodule EffectivePhoenix.Repo do
  use Ecto.Repo,
    otp_app: :effective_phoenix,
    adapter: Ecto.Adapters.Postgres
end
