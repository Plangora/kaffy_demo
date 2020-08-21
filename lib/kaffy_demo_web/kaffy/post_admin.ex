defmodule KaffyDemoWeb.Kaffy.PostAdmin do
  def index(_) do
    [
      title: nil,
      body: nil,
      published: nil,
      inserted_at: %{name: "Created At", value: fn p -> format_datetime!(p.inserted_at) end}
    ]
  end

  defp format_datetime!(datetime), do: Timex.format!(datetime, "{YYYY}-{M}-{D} {h24}:{m}")
end