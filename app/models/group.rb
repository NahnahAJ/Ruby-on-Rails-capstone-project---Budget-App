class Group < ApplicationRecord
  # Define associations.
  belongs_to :author, class_name: "User"
  has_many :transaract_groups
  has_many :transaracts, through: :transaract_groups
 
  validates :icon, :name, presence: true
end
