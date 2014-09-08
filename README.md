###spendtrack 
A simple application that helps your track your expenditure. 

###Schema: (in progress) 
- User 
	- username :string
 	- password :string
- Expenditure
	- amount :float
	- name :string (optional)
	- description :text (optional)
	- date :date
	- user_id :integer 
- Category 
	- name :string
- ExpenditureCategory

