class User < ApplicationRecord
  has_many :post
  has_many :comment

  validates :name, presence: true
  validates :user_name, presence: true
  validates :email, presence: true

  # add email regex later , min chars for usr name

end
