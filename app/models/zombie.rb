class Zombie < ActiveRecord::Base

	validates :name, presence: true

	has_many :tweets
  belongs_to :weapon


  def geolocate
    loc = Zoogle.graveyard_locator(self.graveyard)
    "#{loc[:latitude]}, #{loc[:longitude]}"
  end

  def decapitate
    weapon.slice(self, :head)
    self.status = "dead again"
  end

	def avatar_url
		"http://zombietar.com/#{self.id}.jpg"
	end
end
