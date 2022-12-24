class BadJob < ApplicationJob
  def perform(post)
    post.destroy!
  end
end
