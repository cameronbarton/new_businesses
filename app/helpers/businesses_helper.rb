module BusinessesHelper
  def show_rank(business)
    if business.rank?
      content_tag(:strong, 'Veteran!')
    else
      content_tag(:strong, 'Rookie!')
    end
  end
end
