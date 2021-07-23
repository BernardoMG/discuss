defmodule Discuss.Discussions.Topic do
  use Ecto.Schema

  import Ecto.Changeset

  schema "topics" do
    field :title, :string

    belongs_to :user, Discuss.Accounts.User
    has_many :comments, Discuss.Discussions.Comment
  end

  def changeset(struct \\ %__MODULE__{}, attrs \\ %{}) do
    struct
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
