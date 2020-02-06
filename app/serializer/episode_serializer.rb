# frozen_string_literal: true
class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :title, :episode, :watched

  # def test
  #   "test #{object.id}" 
  # end
end