module Admin::DashboardHelper
  def display_date(input_date)
    return input_date.strftime("%B %d, %Y")
  end
  # %B %d, %Y at %I:%M%p
  
  def comment_approved(comment)
    comment.moderated? ? "" : "<span class='warning'>Not Approved</span>"
  end
end
