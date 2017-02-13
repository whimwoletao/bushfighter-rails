class LandingsController < ApplicationController
  layout 'landing'
  def index
  	if member_signed_in?
			# redirect_to member_dashboard_path(current_member)
			  redirect_to  member_dashboard_path
	end
  end

  def membership
  	addOne = Membership.new(member_params)
  	if addOne.save
  		render  text: "true"
  	else
  		render  text: "false"
  	end
  end

  def member_params
  	params.permit(:group, :name, :email, :number, :accept)
  end
end
