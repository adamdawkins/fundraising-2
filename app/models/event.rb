# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :campaigns, dependent: :destroy

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true
end
