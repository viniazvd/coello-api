defmodule CoelloWeb do
  @moduledoc """
  The entrypoint for defining your web interface, such
  as controllers, channels and so on.

  This can be used in your application as:

      use CoelloWeb, :controller

  The definitions below will be executed for every
  controller, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below. Instead, define any helper function in modules
  and import those modules here.
  """

  def controller do
    quote do
      use Phoenix.Controller, namespace: CoelloWeb

      import Plug.Conn
      import CoelloWeb.Gettext
      alias CoelloWeb.Router.Helpers, as: Routes
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
      import Phoenix.Controller
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
      import CoelloWeb.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end