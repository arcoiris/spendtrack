class AddTimestampsToExpenditures < ActiveRecord::Migration
  def change
  	add_column :expenditures, :created_at, :datetime
  	add_column :expenditures, :updated_at, :datetime
  end
end
