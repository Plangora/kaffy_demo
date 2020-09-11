defmodule KaffyDemoWeb.Kaffy.PostAdmin do
  def index(_) do
    [
      title: nil,
      body: nil,
      published: %{filters: [{"Published", true}, {"Unpublished", false}]},
      inserted_at: %{name: "Created At", value: fn p -> format_datetime!(p.inserted_at) end}
    ]
  end

  def form_fields(_) do
    [
      title: nil,
      body: nil,
      published: %{choices: [{"Published", true}, {"Unpublish", false}], create: :hidden}
    ]
  end

  def search_fields(_), do: [:title]

  defp format_datetime!(datetime), do: Timex.format!(datetime, "{YYYY}-{M}-{D} {h24}:{m}")
end
