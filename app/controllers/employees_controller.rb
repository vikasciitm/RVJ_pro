class EmployeesController<ApplicationController
	def index
		@employees=Employee.all
	end
	def new
		@employee=Employee.new
	end

	def create
		@employee=Employee.new(first_name: params[:employee][:first_name],last_name: params[:employee][:last_name],email: params[:employee][:email],salary: params[:employee][:salary])
		if @employee.save
			redirect_to employees_path
		else
			render :new
		end
	end
end