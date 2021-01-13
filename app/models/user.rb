class User < ApplicationRecord
  has_secure_password

  has_many :courses
  has_many :extra_curriculars
  has_many :work_experiences
  has_many :med_apps

  validates :email, presence: true, uniqueness: true
  validates :password, :birth_day, :location, :traditional, presence: true
end
