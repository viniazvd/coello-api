defmodule Coello.Auth.Services do
  alias Coello.Users.Model, as: User
  alias Coello.Repo

  def authenticate(args) do
    user = Repo.get_by(User, email: String.downcase(args.email))

    case check_password(user, args) do
      true -> {:ok, user}
      _ -> {:error, "Incorrect login credentials"}
    end
  end

  defp check_password(user, args) do
    case user do
      nil -> Bcrypt.no_user_verify()
      _ -> Bcrypt.verify_pass(args.password, user.password_hash)
    end
  end
end