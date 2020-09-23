class Message < ApplicationRecord
  belongs_to :user
  has_one :mood
  accepts_nested_attributes_for :mood

  validates :text1, presence: true, length: {maximum: 45}
  validates :text2, presence: true, length: {maximum: 45}
  validates :text3, presence: true, length: {maximum: 45}
  validates :image, presence: true
end
