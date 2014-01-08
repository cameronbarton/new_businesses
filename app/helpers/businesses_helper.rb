module BusinessesHelper
  def show_rank(business)
    if business.rank?
      content_tag(:strong, 'Veteran!')
    else
      content_tag(:strong, 'Rookie!')
    end
  end

  def image_for(business)
    if business.logo.blank?
      image_tag('placeholder.png')
    else
      image_tag(business.logo)
    end
  end
end
