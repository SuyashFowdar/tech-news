module CategoriesHelper
  def home_most_voted
    most_voted = ''
    if !@most_voted_article.nil?
      most_voted << link_to('', '#', style: "background-image: url(#{@most_voted_article.image});", class: 'img')
      most_voted << '<div>'
      most_voted << "<h3>#{@most_voted_article.title}</h3>"
      most_voted << "<p>#{@most_voted_article.text.truncate(100)}</p>"
      most_voted << '</div>'
    else
      most_voted << '<h2 class="row main-center">No articles yet! Be the first to write one!</h2>'
    end
    render inline: most_voted
  end

  def home_categories
    category_items = ''
    @categories.each do |category|
      category_items << '<article class="home-category">'
      unless category.author_id.nil?
        category_items << link_to('',
                                  category_path(category.category_id),
                                  style: "background-image: url(#{category.image});", class: 'img')
        category_items << '<div class="col flex main-space-between">'
        category_items << "<h3>#{link_to(category.name,
                                         category_path(category.category_id),
                                         class: 'home-category-title')}</h3>"
        category_items << "<h4>#{category.title}</h4>"
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
      items << '<div class="article-details">'
      items << "<h3>#{article.title}</h3>"
      items << "<p>#{article.text.truncate(100)}</p>"
      items << "<address>by #{article.author.name}</address>"
      if session[:user_id]
        items << if !article.votes.pluck(:user_id).include?(session[:user_id])
                   link_to('Vote', class: 'call-vote', action: 'vote', article: article, category: @category)
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
