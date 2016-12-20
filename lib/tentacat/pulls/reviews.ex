defmodule Tentacat.Pulls.Reviews do
  import Tentacat
  alias Tentacat.Client

  @doc """
  List reviews for a pull request.

  ## Example

  Tentacat.Pulls.Reviews.list "elixir-lang", "elixir", 3970

  More info at: https://developer.github.com/v3/pulls/reviews/#list-reviews-on-a-pull-request

  """
  @spec list(binary, binary, binary | integer, Client.t) :: Tentacat.response
  def list(owner, repo, issue_id, client \\ %Client{}) do
    headers = [{"Accept", "application/vnd.github.black-cat-preview+json"}]
    get "repos/#{owner}/#{repo}/pulls/#{issue_id}/reviews", client, [], [], headers
  end
end
