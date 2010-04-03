module Admin::DashboardHelper
  def comment_approved(comment)
    comment.moderated? ? "" : "<span class='warning'>Not Approved</span>"
  end
end
