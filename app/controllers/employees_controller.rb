class EmployeesController < ApplicationController
	def allemp
		@employees=Emp.all
	end

	def new
		@emp=Emp.new
	end

	def create
		@emp=Emp.new(first_name: params[:emp][:first_name],last_name: params[:emp][:last_name],email: params[:emp][:email],salary: params[:emp][:salary])
		if @emp.save
			redirect_to allemp_path
		else
			render :new
		end
	end

	def show
		@employee=Emp.find(params[:id])
	end

end