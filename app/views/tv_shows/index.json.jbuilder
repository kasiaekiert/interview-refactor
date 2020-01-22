json.tv_shows @tv_shows do |tv_show|
  json.(tv_show, :title, :description, :rank)

  json.Episode tv_show.episodes do |episode|
    json.(episode, :title, :episode, :tv_show_id)
  end
end