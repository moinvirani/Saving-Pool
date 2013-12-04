class User < ActiveRecord::Base
    authenticates_with_sorcery!

    has_many :projects
    has_many :pledges


    
  validates :password, length: { minimum: 6 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true


  def user_total_pledges
    pledges.sum(:amount)
  end
end
