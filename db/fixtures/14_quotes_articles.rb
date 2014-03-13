quote_count = Quote.all.count.to_i
quote_array = (1..quote_count).to_a.shuffle!
Article.all.each do |article|
  article.quote_id = quote_array.pop
  article.save
end