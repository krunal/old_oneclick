class User < ActiveRecord::Base
  acts_as_token_authenticatable	

  #attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


  def skip_confirmation!
    self.confirmed_at = Time.now
  end
  
end
