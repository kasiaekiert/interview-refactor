class TvShow < ActiveRecord::Base
  belongs_to :user
  has_many :episodes

  def my_episodes
    Episode.where(tv_show_id: id)
  end

  def to_json(_)
    ep = []
    episodes.each do |e|
      ep << {id: e.id, title: e.title}
    end

    JSON.generate({
      id: id,
      title: title,
      episodes: ep
    })
  end
end
