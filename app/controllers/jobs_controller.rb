class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new #creating where new "jobs" will be created
    @job = Job.new
  end

end
