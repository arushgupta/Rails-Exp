class Role < ActiveRecord::Base
	#has_many :through relation
	has_many :assignments
	has_many :zombies, through: :assignments

end