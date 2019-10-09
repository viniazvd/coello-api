defmodule CoelloWeb.Graphql.Types.UserType do
  use Absinthe.Schema.Notation

  object :user_type do
    field(:id, :id)
    field(:email, :email)
    field(:password, :password)
    field(:last_name, :last_name)
    field(:first_name, :first_name)
    field(:role, :role)
    field(:photo, :photo)
    field(:details, :details)
    field(:initials, :initials)
  end

  input_object :user_input_type do
    field(:email, non_null(:string))
    field(:password, non_null(:string))
    field(:last_name, non_null(:string))
    field(:first_name, non_null(:string))
    field(:role)
    field(:photo)
    field(:details)
    field(:initials)
  end
end