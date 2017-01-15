class Team < ActiveRecord::Base
include FriendlyId

 has_many :joint_member_teams 
 has_many :members, :through => :joint_member_teams
 mount_uploader  :logo, LogoUploader
 mount_uploader  :banner, BannerUploader


    friendly_id :name, use: :slugged

    def should_generate_new_friendly_id?
    	 slug.nil? || name_changed? || new_record?
    end
    
end

