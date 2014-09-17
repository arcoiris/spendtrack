class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :show]

	def new
	end

	def create
	end

	def edit 
	end

	def update
	end

	def show
	end

	def set_user
		@user = User.find(params[:id])
	end
end