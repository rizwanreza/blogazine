# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def render_haml(body)
    Haml::Engine.new(body, :options => { :format => :html5, :ugly => true }).render
  end
  
  def display_date(input_date)
    return input_date.strftime("%B %d, %Y")
  end
  # %B %d, %Y at %I:%M%p
  
end
