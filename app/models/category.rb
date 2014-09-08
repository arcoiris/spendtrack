class Category < ActiveRecord::Base
	has_many :expenditure_categories
	has_many :expenditures, through: :expenditure_categories
end