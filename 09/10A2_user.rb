class User < ApplicationRecord
  has_secure_password

  #presence for all fields
  validates :loginname, presence: true
  validates :name, presence: true
  validates :email, presence: true
  validates :role, presence: true
  validates :password, presence: true


  #uniqueness for loginname
  validates :loginname, uniqueness: true

  #For role, inclusion in ['admin', 'general']
  validates :role, inclusion: { in: ['admin', 'general'] }
end

# user = User.new(loginname: name: 'kim', password: 'hijibin', password_confirmation: 'hijibin',  )
# user.save        
