class Message < ApplicationRecord
  belongs_to :user, optional: true

  validates :text1, presence: true, length: {maximum: 30}
  validates :text2, presence: true, length: {maximum: 30}
  validates :text3, presence: true, length: {maximum: 30}
  # validates :image, presence: true

  mount_uploader :image, ImageUploader
  
end
