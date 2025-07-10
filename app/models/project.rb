class Project < ApplicationRecord
    validates :name, presence: true
    validates :amount, presence: true,
    numericality: { greater_than: 0 }
    has_many :budgets
    has_many :allocations
    has_many :users,
    through: :allocations
end
