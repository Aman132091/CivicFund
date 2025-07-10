class Budget < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates :amount, presence: true,
  numericality: { greater_than: 0}
  validates :status, presence: true
end
