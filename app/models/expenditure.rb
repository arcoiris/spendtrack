class Expenditure < ActiveRecord::Base
	belongs_to :user

	has_many :expenditure_categories
	has_many :categories, through: :expenditure_categories

	validates :amount, presence: true, numericality: true, numericality: { greater_than: 0 }
	validates :date, presence: true
	validates :name, length: { maximum: 50 }
	validates :description, length: { maximum: 500 }
end