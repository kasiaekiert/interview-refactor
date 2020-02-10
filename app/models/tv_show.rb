# frozen_string_literal: true

class TvShow < ActiveRecord::Base
  belongs_to :user
  has_many :episodes
  validates :title, :description, presence: true

  def my_episodes
    Episode.where(tv_show_id: id)
  end

  # This is not used anymore, I use ActiveModel Serializers gem.
  # def to_json(_)
  #   ep = []
  #   episodes.each do |e|
  #     ep << {id: e.id, title: e.title}
  #   end

  #   JSON.generate({
  #     id: id,
  #     title: title,
  #     episodes: ep
  #   })
  # end
end
