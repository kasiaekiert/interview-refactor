# frozen_string_literal: true

class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :title, :episode, :watched

  def watched
    object.watched.present?
  end

  # def test
  #   "test #{object.id}"
  # end
end
