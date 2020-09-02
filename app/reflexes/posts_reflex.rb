# frozen_string_literal: true

class PostsReflex < ApplicationReflex
  include CableReady::Broadcaster

  def like
    post = Post.find(element.dataset[:id])
    post.increment! :likes_count
    cable_ready["ui"].text_content(
      selector: "#post-#{post.id}-likes",
      text: post.likes_count
    )
    cable_ready.broadcast
    morph :nothing
  end
end
