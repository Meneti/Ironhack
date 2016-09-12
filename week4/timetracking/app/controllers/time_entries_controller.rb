class TimeEntriesController < ApplicationController
def update
	@project = Project.find(params[:project_id])
	@time_entry= @project.time_entries.find(params[:id])

	if time_entry.update(
		hours: params[:time_entry][:hours]
		minutes: params[:time_entry][:minutes],
		date: params[:time_entry][:date]
		)
redirect_to "/projects/#{project.id}/time_entries"
else
	redirect_to "/projects/#{project.id}/time_entries/#{time_entry.id}/edit"

private


def edit
	@project = Project.find(params[:project_id])
	@project.time_entries.find(params[:id])
end
	def index
		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries.where(
			date: Time.now.beginning_of_day..Time.now.end_of_day)
	end
	def new
		#input
		# -params[:project_id]
		#1. Find a project
		#2. Instantiate a new time entry for the project
		@project = Project.find(params[:projects_id])
		@time_entries = @project.time_entries.new
	end
	def create
		project = Project.find(params[:project_id])
		tie_entry = project.time_entries.new(time_entry_params)
		time_entry.save
	

		redirect_to"/projects/#{project.id}/time_entries"
	end

	def time_entry_params
		params.require(:time_entry).permit(:hours,:minutes, :date)
	end

end
