class Transaract < ApplicationRecord
  # Define associations.
  has_many :transaract_groups
  has_many :groups, through: :transaract_groups
  belongs_to :author, class_name: "User"
  
  validates :name, :author_id, presence: true
  validates :amount, numericality: true
end
