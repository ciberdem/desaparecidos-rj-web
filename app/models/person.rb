class Person < ActiveRecord::Base
  mount_uploader :photo, ImageUploader

  default_scope { order(created_at: :desc) }
end