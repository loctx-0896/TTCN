class Contact < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :description, presence: true
end
