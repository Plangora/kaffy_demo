defmodule KaffyDemoWeb.Kaffy.PostTasks do
  def task_word_count do
    %{
      name: "Total # of Words",
      initial_value: nil,
      action: fn _ -> {:ok, KaffyDemo.Blog.total_words_in_blog()} end,
      every: 10
    }
  end
end