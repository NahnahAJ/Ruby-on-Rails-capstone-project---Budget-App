class User < ApplicationRecord
  # Define associations.
  has_many :transaracts
  has_many :groups

  validates :name, presence: true
end
