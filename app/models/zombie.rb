class Zombie < ActiveRecord::Base

	# Named Scope
	scope :rotting, where(rotting: true)
	scope :fresh, where("age < 20")
	scope :recent, order("created_at desc").limit(3)

	# Callbacks
	before_save :make_rotting

	def make_rotting
	  self.rotting = true if age > 20
	end

end
