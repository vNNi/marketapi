defmodule Marketapi.Repo do
  use Ecto.Repo,
    otp_app: :marketapi,
    adapter: Ecto.Adapters.MyXQL
end
