class Project < ActiveRecord::Base

  belongs_to :category
  belongs_to :user 

  has_many :pledges, :through => :users

  validates :title, :description, :goal, :start_date, :end_date, :creater_id, :presence => true
  validates :goal, :numericality => {:only_integer => true}
 
  #validates :end_date, :date => {:after => :start_date, :message => "must be after Start Date"}

  mount_uploader :image, ImageUploader
end
