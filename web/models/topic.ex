defmodule Discuss.Topic do
    use Discuss.Web, :model #automatically creates a struct of the same name as the module

    schema "topics" do
        field :title, :string
    end

    #update topic struct with changes
    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:title])
        |> validate_required([:title])
    end
end