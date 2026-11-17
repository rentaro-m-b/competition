defmodule Competition.RouterTest do
  use ExUnit.Case, async: true
  import Plug.Test
  alias Competition.Router

  @opts Router.init([])

  describe "/accounts" do
    test "口座の一覧を取得する" do
      conn =
        :get
        |> conn("/accounts", "")
        |> Router.call(@opts)

      assert conn.state == :sent
      assert conn.status == 200

      body = Jason.decode!(conn.resp_body)
      # body = Jason.decode!(conn.resp_body)
      # assert length(body["accounts"]) == 2
    end
  end
end
