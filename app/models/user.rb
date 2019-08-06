class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :city
  has_many :students
  has_many :teachers

  after_create :set_default_user
  after_create :send_welcome_email
  
  enum role: [:user, :student, :teacher, :admin]


  def set_default_user
    self.user!
  end

  def send_welcome_email
    UserNotifierMailer.welcome_user(self).deliver_now
  end

  def avatar_url
    hash = Digest::MD5.hexdigest(email)
    "https://www.gravatar.com/avatar/#{hash}?s=32&d=identicon"
  end
end