class Group < ActiveRecord::Base
	has_many  :tallies, dependent: :destroy
end
