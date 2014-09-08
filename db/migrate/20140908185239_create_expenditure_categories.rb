class CreateExpenditureCategories < ActiveRecord::Migration
  def change
    create_table :expenditure_categories do |t|
    	t.integer :expenditure_id
    	t.integer :category_id
    	t.timestamps
    end
  end
end
