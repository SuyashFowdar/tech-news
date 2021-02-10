module ArticlesHelper
  def search_result
    result = ''
    @articles.each do |article|
      result << '<article class="col">'
      result << link_to('', '#', style: "background-image: url(#{article.image});", class: 'img')
      result << "<h3>#{article.title}</h3>"
      result << "<p>#{article.text.truncate(100)}</p>"
      result << '</article>'
    end
    render inline: result
  end

  def new_article_categories
    items = ''
    @categories.each do |category|
      items << '<label class="row margin8">'
      items << check_box('', 'categories', { multiple: true }, category.id)
      items << category.name
      items << '</label>'
    end
    render inline: items
  end
end
