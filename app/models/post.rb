class Post < ApplicationRecord
  belongs_to :user
  has_many :comment

  validates_presence_of :user
end
