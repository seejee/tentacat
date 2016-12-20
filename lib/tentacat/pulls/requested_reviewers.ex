defmodule Tentacat.Pulls.RequestedReviewers do
  import Tentacat
  alias Tentacat.Client

  @doc """
  List requested reviewers on an issue.

  ## Example

  Tentacat.Issues.RequestedReviewers.list "elixir-lang", "elixir", 3970

  More info at: https://developer.github.com/v3/pulls/review_requests/#list-review-requests

  """
  @spec list(binary, binary, binary | integer, Client.t) :: Tentacat.response
  def list(owner, repo, issue_id, client \\ %Client{}) do
    headers = [{"Accept", "application/vnd.github.black-cat-preview+json"}]
    get "repos/#{owner}/#{repo}/pulls/#{issue_id}/requested_reviewers", client, [], [], headers
  end
end
