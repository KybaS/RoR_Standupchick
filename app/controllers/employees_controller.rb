class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      flash[:success] = "Employee was added successfully!"
      redirect_to @employee
    else
      render 'new'
    end
  end

  private

  def employee_params
      params.require(:employee).permit(:nickname, :first_name, :last_name, :employee_email, :position)
  end
end
