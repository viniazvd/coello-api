defmodule Coello.Guardian do
  use Guardian, otp_app: :coello
  alias Coello.Users.Services, as: UserServices
  alias Coello.Users.Model, as: UserModel

  def subject_for_token(%UserModel{} = user, _claims) do
    {:ok, to_string(user.id)}
  end

  def subject_for_token(_, _) do
    {:error, :reason_for_error}
  end

  def resource_from_claims(%{"sub" => id}) do
    case UserServices.get_user!(id) do
      nil -> {:error, :resource_not_found}
      user -> {:ok, user}
    end
  end

  def resource_from_claims(_claims) do
    {:error, :reason_for_error}
  end
end