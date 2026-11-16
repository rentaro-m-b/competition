defmodule Competition.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/health" do
    send_resp(conn, 200, Jason.encode!(%{ping: "pong"}))
  end

  get "/accounts" do
    # TODO: create usecase
    send_resp(conn, 200, Jason.encode!(%{accounts: "pong"}))
  end

  match _ do
    send_resp(conn, 404, "NotFound")
  end
end
