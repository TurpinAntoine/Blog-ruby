class JobsController < ApplicationController

  before_action :find_job, only: [:show, :destroy]

  def index
    @jobs = Job.all
  end

  def show
    @comments = @job.comments
    @comment = Comment.new
  end

  def new
    @job = Job.new
  end

  def create
    jobtest = Job.create(jobs_params)

    #if jobtest.persisted?
      #redirect_to root_path
    #end
    redirect_to root_path if jobtest.persisted?

  end

  def edit
    @job = Job.find(1)
  end

  def update

  end

  def destroy
    @job.destroy
    redirect_to root_path
  end

  private
  def jobs_params
    params.require(:job).permit!
  end

  def find_job
    @job = Job.find(params[:id])
  end

end
