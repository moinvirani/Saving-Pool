class Project < ActiveRecord::Base

  validates :title, :description, :goal, :start_date, :end_date, :user_id, :presence => true
  validates :goal, :numericality => {:only_integer => true}

  #validates :end_date, :date => {:after => :start_date, :message => "must be after Start Date"}

  mount_uploader :image, ImageUploader
end
