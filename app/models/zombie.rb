class Zombie < ActiveRecord::Base
	validates :name, presence: true
	has_many :tweets

	def avatar_url
		"http://zombietar.com/#{self.id}.jpg"
	end
end
