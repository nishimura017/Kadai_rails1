class TasksController < ActionController::Base
	
  def index
		@task = Task.all


	end
	def new
		@task = Task.new
	end
	def create
		
			@task=Task.create(params[:tasks])
			
	
		redirect_to'/tasks/index'
	end
	

	
end