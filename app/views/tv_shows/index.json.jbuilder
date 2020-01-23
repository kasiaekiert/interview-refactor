json.tv_shows @tv_shows do |tv_show|
  json.call(
    tv_show,
    :title,
    :description,
    :rank
  )

  json.episode tv_show.episodes do |episode|
    json.call(
      episode,
      :title,
      :episode,
      :tv_show_id
    )
  end
end
