json.array!(@news) do |news|
  json.extract! news, :id, :title, :description, :content, :link, :userId, :date, :catId, :likes
  json.url news_url(news, format: :json)
end
