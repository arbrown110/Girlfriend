class GoalsController < ApplicationController

 #before_action :check_for_logged_in, except: [:index]

 def new
   @goal = Goal.new
 end

 def create
  @goal = current_user.goal.build(goal_params)
  if @goal.save
   redirect_to goals_path(@goal)
  else
   render :new
  end
 end

 def index
  @goal = Goal.all
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
  params.require(:goal).permit(:title, :location_id, :theme, :group)
 end
end
