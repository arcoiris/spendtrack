class ChangeExpenditureAmountColumnTypeToDecimal < ActiveRecord::Migration
  def change
 		change_column(:expenditures, :amount, :decimal, precision: 8, scale: 2)
  end
end
