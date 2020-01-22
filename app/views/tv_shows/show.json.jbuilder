# json.content format_content(@tv_shows.content)
# json.(@tv_shows, :title, :description, :rank)

# json.author do
#   json.title @tv_shows.title
#   json.description @tv_shows.description
#   json.rank @tv_shows.rank

#   json.url url_for(@tv_shows.title, format: :json)
# end

# json.array! @tv_shows do |tv_show|
#   json.id tv_show.title
#   json.name tv_show.description
#   json.created_at tv_show.created_at
# end

