class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :description

  belongs_to :address

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
  validates :first_name, presence: true
  validates :last_name, presence: true
end
