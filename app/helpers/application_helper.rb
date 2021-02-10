module ApplicationHelper
  def notification
    notif = ''
    notif << '<p class="notice"><%= notice %></p>' if notice
    notif << '<p class="alert"><%= alert %></p>' if alert
    render inline: notif
  end

  def nav_selected(path, data = nil)
    return 'nav-selected' if (data.nil? && request.env['PATH_INFO'] == path) ||
                             request.env['PATH_INFO'] == path + data.to_s

    ''
  end

  def category_items
    categories = ''
    @nav_categories.each do |category|
      categories << link_to(category.name, category, class: nav_selected('/categories/', category.id))
    end
    render inline: categories
  end

  def session_info
    info = ''
    info << '<div class="row">'
    if session[:user_id]
      info << '<span class="nav-item"><%= session[:user_name] %></span>'
      info << link_to('New Article', new_article_path, class: nav_selected('/articles/new'))
      info << link_to('Log Out', users_destroy_session_path)
    else
      info << link_to('Log In', users_sign_in_path, class: nav_selected('/users/sign_in'))
      info << link_to('Sign Up', users_sign_up_path, class: nav_selected('/users/sign_up'))
    end
    info << '</div>'
    render inline: info
  end
end
