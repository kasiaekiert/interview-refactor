# frozen_string_literal: true

class TvShowDestroyForm
  include ActiveModel::Model
  attr_accessor :tv_show
  validate :check_episodes_presence

  def destroy
    return false unless valid?

    tv_show.destroy

    true
  end

  private

  def check_episodes_presence
    return unless tv_show.episodes.present?

    errors.add(:base, 'You cannot remove Tv Show because Episodes exist!')
  end
end
