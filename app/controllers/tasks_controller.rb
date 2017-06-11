class TasksController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: [:destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = current_user.tasks.build(tasks_params)
    if @task.save
      flash[:success] = "Task Added"
      redirect_to root_url
    else
      @feed_items = []
    render 'static_pages/home'
    end
  end


  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task.destroy
    flash[:success] = "Task Deleted"
    redirect_to request.referrer || root_url
  end

  private

    def set_task
      @task = Task.find(params[:id])
    end


    def tasks_params
      params.require(:task).permit(:content, :user_id, :completed, :category, :priority)
    end

  def correct_user
    @task = current_user.tasks.find_by(id: params[:id])
    redirect_to root_url if @task.nil?
  end

  end
