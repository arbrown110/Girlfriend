class GoalsController < ApplicationController

 before_action :check_for_logged_in, except: [:index]

 def new
    @goal = Goal.new
 end

 def create
  @goal = current_user.goals.build(goal_params)
  if @goal.save
   redirect_to goal_path(@goal)
  else
   render :new
 end

 def index
  
 end

 def show
  set_meet_up
 end

 def update
  set_meet_up
  if @goal.update(goal_params)
    redirect_to goal_path(@goal)
  else
    render :edit
  end
 end

 def destroy
  set_meet_up
  @goal.destroy
  redirect_to goal_path
 end

 private
 def set_meet_up
  @goal = Goal.find_by(id: params[:id])
  if !@goal
   redirect_to goal_path
  end
 end


 def goal_params
  params.require(:goal).permit(:title, :location, :theme, :group)
 end
end
