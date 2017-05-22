class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new #creating where new "jobs" will be created
    @job = Job.new
  end

  def create #sends the item to the database
    Job.create(job_params)
    redirect_to root_path #redirect back to job index page after job has been created
  end

  private

  def job_params #pulls the values out of the form
    params.require(:job).permit(:position, :company, :city, :state, :zipcode, :salary, :address) #all fields in the database
  end


end
