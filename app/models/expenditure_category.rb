class ExpenditureCategory < ActiveRecord::Base
	belongs_to :expenditure
	belongs_to :category
end