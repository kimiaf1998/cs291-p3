class User < ApplicationRecord
  has_many :post
  has_many :comment

  validates :name, presence: true, format: { with: /\A^[a-zA-Z]+$\z/, message: "Invalid Name"}
  validates :user_name, presence: true, length: { minimum: 10 }
  validates :email, presence: true, format: { with: /\A^(.+)@(.+)$\z/, message: "Invalid Email Address"  },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }


  # add email regex later , min chars for usr name

end
