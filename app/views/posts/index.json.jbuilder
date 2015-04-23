json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :content, :link, :userId, :date, :category, :votes, :numComments, :status
  json.url post_url(post, format: :json)
end
