class Post < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: 'owner_id'
  mount_uploader :photo, PhotoUploader
end
