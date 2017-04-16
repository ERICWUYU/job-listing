class ResumesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  def new
    @job = Job.find(params[:job_id])
    @resume = Resume.new
  end

  def create
    @job = Job.find(params[:job_id])
    @resume = Resume.new(resume_params)
    if @resume.save
      redirect_to jobs_path, notice: "提交简历成功！"
    else
      render :new
    end
  end

  private
  def resume_params
    params.require(:resume).permit(:content, :attachment)
  end
end
