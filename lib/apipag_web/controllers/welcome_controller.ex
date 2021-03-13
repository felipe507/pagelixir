defmodule ApipagWeb.WelcomeController do
  use ApipagWeb, :controller
  def index(conn, _params) do
      text(conn,"Felipe");
  end
end
