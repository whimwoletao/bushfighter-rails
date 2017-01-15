class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def send_notification(member_id, type, sender_id, team_name)

  	  if (type == 1) 
  	  	# user submissions
  	  	message = ""
  	  elsif (type == 2)
  	  	# company invitation
  	  	sender = Member.find(sender_id)
  	  	message = sender.name + ' (' + sender.email + ') ' + 'added you to ' + team_name

  	  elsif(type == 3)
  	  	# message from another user to company 
  	  	message = ""

      elsif (type == 4)
        # remove you from another company
        sender = Member.find(sender_id)
        if (member_id == sender_id)
          message = 'You' + ' (' + sender.email + ') ' + 'left ' + team_name
        else
          message = sender.name + ' (' + sender.email + ') ' + 'removed you from ' + team_name
        end

      elsif (type == 5)
      # Transer Ownership to you
      sender = Member.find(sender_id)
      message = sender.name + ' (' + sender.email + ') ' + 'transfer Ownership of ' + team_name + ' to you '
  	  end

  	  notification =  Notification.new(read: 0, type_notification: type, message: message , member_id: member_id )
      notification.save!

      # get receivers object
      # receiver = User.find(user_id)
      # UserMailer.receive_notification(receiver, message).deliver_later

  end

end
