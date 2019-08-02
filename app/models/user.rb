class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :city


  after_create :send_welcome_email
  after_create :set_role

  enum role: [:user, :student, :teacher, :admin ]


  def set_role
  	self.user!
  end

  def send_welcome_email
  	UserNotifierMailer.welcome_user(self).deliver_now
  end
end
