# frozen_string_literal: true

class Episode < ActiveRecord::Base
  belongs_to :tv_show
end
