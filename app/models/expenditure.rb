class Expenditure < ActiveRecord::Base
	belongs_to :user

	has_many :expenditure_categories
	has_many :categories, through: :expenditure_categories
end