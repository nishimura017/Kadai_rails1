class TasksController < ActionController::Base
	
  def index
		@tasks = Task.all


	end
	def new
		@task = Task.new
	end
	def create
	
		@task = Task.new(params.require(:task).permit(:title, :start_day, :end_day, :all_day))

     if @task.save
		
			flash[:notice] = "ユーザーを新規登録しました"
       redirect_to "/tasks/index"
     else
       render "new"
     end
	end

	
	

	
end