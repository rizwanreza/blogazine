module PostsHelper
  def link_to_published_post(post)
    link_to post.title, "/#{post.slug}"
  end
end
