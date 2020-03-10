# frozen_string_literal: true

class Campaign < ApplicationRecord
  belongs_to :event
  belongs_to :user

  has_many :donations, dependent: :destroy
  has_one_attached :image

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true
  validates :donations_target, numericality: true
end
