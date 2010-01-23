module CommentsHelper
  def comments_count(comments)
    unless comments.size == 1
      "#{comments.size} Comments"
    else
      "#{comments.size} Comment"
    end
  end
end
