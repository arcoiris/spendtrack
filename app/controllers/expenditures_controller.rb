class ExpendituresController < ApplicationController
	before_action :set_expenditure, only: [:edit, :update, :show, :destroy]

	def index
	end

	def new
		@expenditure = Expenditure.new
	end

	def create
		@expenditure = Expenditure.new(safe_params)
		@expenditure.user = User.first #change this when sessions are added
		if @expenditure.save
			flash[:notice] = "Your expenditure has been added."
			redirect_to new_expenditure_path
		else
			flash[:alert] = "Failed"
			render 'new'
		end
	end

	def edit
	end

	def update
		if @expenditure.update(safe_params)
			flash[:notice] = "Your expenditure has been updated."
			redirect_to new_expenditure_path
		else
			render 'edit'
		end
	end

	def show
	end

	def destroy
	end

	private

	def safe_params
		params.require(:expenditure).permit(:name, :amount, :description)
	end

	def set_expenditure
		@expenditure = Expenditure.find(params[:id])
	end
end