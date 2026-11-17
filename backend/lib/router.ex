defmodule Competition.Router do
  use Plug.Router
  alias Competition.Usecase.Accounts

  plug :match
  plug Plug.Parsers,
       parsers: [:json],
       pass:  ["application/json"],
       json_decoder: Jason
  plug :dispatch

  get "/health" do
    send_resp(conn, 200, Jason.encode!(%{ping: "pong"}))
  end

  get "/accounts" do
    send_resp conn, 200, Accounts.list |> Jason.encode!
  end

  match _ do
    send_resp(conn, 404, "NotFound")
  end
end
