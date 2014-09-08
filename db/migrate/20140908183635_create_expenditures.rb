class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
    	t.string :name 
    	t.text :description 
    	t.float :amount 
    	t.date :date 
    	t.integer :user_id
    end
  end
end
