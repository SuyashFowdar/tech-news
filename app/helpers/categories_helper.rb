module CategoriesHelper
  def home_categories
    category_items = ''
    @categories.each do |category|
      category_items << '<article class="home-category">'
      unless @list[category.id].nil?
        category_items << link_to('',
                                  category,
                                  style: "background-image: url(#{@list[category.id].image});", class: 'img')
        category_items << '<div class="col flex main-space-between">'
        category_items << "<h3>#{link_to(category.name, category, class: 'home-category-title')}</h3>"
        category_items << "<h4>#{@list[category.id].title}</h4>"
        category_items << '</div>'
      end
      category_items << '</article>'
    end
    render inline: category_items
  end

  def article_items
    items = ''
    @articles.each do |article|
      items << '<article>'
      items << link_to('', '#', style: "background-image: url(#{article.image});", class: 'img')
      items << '<div>'
      items << "<h3>#{article.title}</h3>"
      items << "<p>#{article.text.truncate(100)}</p>"
      items << "<address>by #{article.author.name}</address>"
      if session[:user_id]
        items << if !article.votes.pluck(:user_id).include?(session[:user_id])
                   link_to('Vote', action: 'vote', article: article, category: @category)
                 else
                   '<div class="voted">Voted</div>'
                 end
      end
      items << '</div>'
      items << '</article>'
    end
    render inline: items
  end
end
