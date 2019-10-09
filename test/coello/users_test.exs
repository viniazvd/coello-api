defmodule Coello.UsersTest do
  use Coello.DataCase

  alias Coello.Users

  describe "users" do
    alias Coello.Users.User

    @valid_attrs %{details: "some details", email: "some email", first_name: "some first_name", initials: "some initials", last_name: "some last_name", password: "some password", photo: "some photo", role: "some role"}
    @update_attrs %{details: "some updated details", email: "some updated email", first_name: "some updated first_name", initials: "some updated initials", last_name: "some updated last_name", password: "some updated password", photo: "some updated photo", role: "some updated role"}
    @invalid_attrs %{details: nil, email: nil, first_name: nil, initials: nil, last_name: nil, password: nil, photo: nil, role: nil}

    def user_fixture(attrs \\ %{}) do
      {:ok, user} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Users.create_user()

      user
    end

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Users.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Users.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      assert {:ok, %User{} = user} = Users.create_user(@valid_attrs)
      assert user.details == "some details"
      assert user.email == "some email"
      assert user.first_name == "some first_name"
      assert user.initials == "some initials"
      assert user.last_name == "some last_name"
      assert user.password == "some password"
      assert user.photo == "some photo"
      assert user.role == "some role"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Users.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      assert {:ok, %User{} = user} = Users.update_user(user, @update_attrs)
      assert user.details == "some updated details"
      assert user.email == "some updated email"
      assert user.first_name == "some updated first_name"
      assert user.initials == "some updated initials"
      assert user.last_name == "some updated last_name"
      assert user.password == "some updated password"
      assert user.photo == "some updated photo"
      assert user.role == "some updated role"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Users.update_user(user, @invalid_attrs)
      assert user == Users.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Users.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Users.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Users.change_user(user)
    end
  end
end
