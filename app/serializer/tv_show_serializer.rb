# frozen_string_literal: true
class TvShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :rank, :test
  has_many :episodes
  
  def test
    "test #{object.id}" 
  end
end