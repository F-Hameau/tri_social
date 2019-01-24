class Event < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  mount_uploader :photo, PhotoUploader
end
