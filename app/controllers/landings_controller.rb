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

  def reserve
    plusOne = GameReservation.new(reserve_params)
    if plusOne.save
      render  text: "true"
    else
      render  text: "false"
    end
  end
  def contactus
    info = ContactUs.new(contact_params)
    if info.save
      render text: "true"
    else
      render text: "false"
    end
  end

   protected
  def contact_params
    params.permit(:name, :email, :subject, :message)
  end
  def member_params
  	params.permit(:group, :name, :email, :number, :accept)
  end
  def reserve_params
    params.permit(:name, :phone, :type, :package, :date, :time)
  end
end
