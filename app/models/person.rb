class Person < ActiveRecord::Base
  extend PersonSearcher

  mount_uploader :photo, ImageUploader

  default_scope { order(created_at: :desc) }

  # Get params for each Person's attribute
  # and return objs according to search queries
  def self.search params
    Person.where(get_sex_query params[:sex])
          .where(get_skin_query params[:skin])
          .where(get_hair_query params[:hair])
          .where(get_eyes_query params[:eyes])
          .where(get_height_query params[:height])
          .where(get_specificity_query params[:specificity])
          .where(get_name_query params[:name])
          .where(get_father_query params[:father])
          .where(get_mother_query params[:mother])
          .where(get_age_query params[:age])
  end
end