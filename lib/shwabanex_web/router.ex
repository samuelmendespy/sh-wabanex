defmodule ShwabanexWeb.Router do
  use ShwabanexWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    # Aceita apenas json através de pipeline api
  end

  scope "/api", ShwabanexWeb do
    pipe_through :api

    get "/", IMCController, :index
  end

  scope "/api" do
    pipe_through :api

    forward "/graphql", Absinthe.Plug, schema: ShwabanexWeb.Schema
    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: ShwabanexWeb.Schema
  end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: ShwabanexWeb.Telemetry
    end
  end
end
