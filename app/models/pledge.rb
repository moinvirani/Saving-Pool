class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates :amount, :numericality => {:only_integer => true}

end
