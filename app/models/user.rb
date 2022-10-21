class User < ApplicationRecord
  has_many :post
  has_many :comment

  validates :name, presence: true, format: { with: /\A^[a-zA-Z]+$\z/i, message: "Invalid Name"  }
  validates :user_name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5 }
  validates :email, presence: true, format: { with: /\A^(.+)@(.+)$\z/i, message: "Invalid Email Address"  },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }

end
